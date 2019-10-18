import Foundation

final class MainViewState {
    let settingsStore = AppState.shared.settings
    let mainStore = AppState.shared.main

    private var config: LanguageModel? {
        return settingsStore.languageConfig.value[language]
    }

    private var language: Languages.RawValue {
        return settingsStore.language.value
    }

    func startState() {
        getLanguageTypes()
    }

    private func didTimestampExpire(date: Date) -> Bool? {
        let difference = Date().timeIntervalSince(date)
        return try? difference.didExpireAfter(hours: 24)
    }

    private func getLanguageTypes() {
        guard let config = config,
            let didExpire = didTimestampExpire(date: config.selectedType.timestamp) else { return }

        if didExpire {
            updateConfig(config: config)
        } else {
            // TODO: Optimize this logic, otherwise redundant calls occur for same language type with same index
            fetchModel(config: config) { data in
                DispatchQueue.main.async {
                    self.mainStore.model = data
                }
            }
        }
    }

    private func updateConfig(config: LanguageModel) {
        if let limit = config.selectedType.limit {
            let withinTypeRange = config.selectedType.currentIndex < limit

            if withinTypeRange {
                var updatedConfig = config
                updatedConfig.selectedType.currentIndex += 1
                updatedConfig.selectedType.timestamp = Date.getCharacterResetDate()

                fetchModel(config: updatedConfig) { data in
                    DispatchQueue.main.async {
                        self.settingsStore.languageConfig.value[self.language] = updatedConfig
                        self.mainStore.model = data
                    }
                }
            } else {
                let lanTypeCount = config.types.count - 1
                let nextTypeId = config.selectedType.id + 1
                let canProgressToNextType = nextTypeId <= lanTypeCount

                if canProgressToNextType {
                    var updatedConfig = config
                    updatedConfig.selectedType = updatedConfig.types[nextTypeId]
                    
                    fetchModel(config: updatedConfig) { data in
                        DispatchQueue.main.async {
                            self.settingsStore.languageConfig.value[self.language] = updatedConfig
                            self.mainStore.model = data
                        }
                    }
                }
            }
        } else {
            var updatedConfig = config
            updatedConfig.selectedType.currentIndex += 1
            updatedConfig.selectedType.timestamp = Date.getCharacterResetDate()

            fetchModel(config: updatedConfig) { data in
                DispatchQueue.main.async {
                    self.settingsStore.languageConfig.value[self.language] = updatedConfig
                    self.mainStore.model = data
                }
            }
        }
    }

    // Network Requests
    func fetchModel(config: LanguageModel, completion: ((BaseModel) -> Void)? = nil) {
        guard let type = LanguageTypes(rawValue: config.selectedType.name) else { return }
        let id = config.selectedType.currentIndex

        switch type {
            case .Hiragana:
                fetchRequest(model: HiraganaModel.self, path: .hiragana, id: id, completed: { data in
                    completion?(data)
                })
            case .Katakana:
                fetchRequest(model: KatakanaModel.self, path: .katakana, id: id, completed: { data in
                    completion?(data)
                })
            case .Kanji:
                fetchRequest(model: KanjiModel.self, path: .kanji, id: id, completed: { data in
                    completion?(data)
                })
            case .Pinyin:
                fetchRequest(model: CharacterModel.self, path: .pinyin, id: id, completed: { data in
                    completion?(data)
                })
        }
    }


    func fetchRequest<M: BaseModel>(model: M.Type, path: CharacterPath, id: Int, completed: @escaping (M) -> ()) {
        let endpoint = CharacterRoute<M>(path: path, id: id)

        HTTP(endpoint: endpoint)
            .request(success: { data in
                guard let data = data.first else { return }
                completed(data)
            }, failure: { error in
                print(error)
            })
    }
}
