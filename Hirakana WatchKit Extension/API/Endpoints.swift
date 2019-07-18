extension HTTP {
    struct EndpointBuilder {
        let rangeFormat = "/%@?from=%d&to=%d"
        let allFormat = "/%@/all"

        func build(endpoint: Endpoint) -> String {
            switch endpoint {
                case .range(let char, let range):
                    let (from, to) = range
                    return String(format: rangeFormat, arguments: [char.rawValue, from, to])
                case .all(let char):
                    return String(format: allFormat, char.rawValue)
            }
        }
    }

    enum CharacterEndpoints: String {
        case kanji, hiragana, katakana
    }

    enum Endpoint {
        case range(CharacterEndpoints, ((from: Int, to: Int)))
        case all(CharacterEndpoints)
    }
}
