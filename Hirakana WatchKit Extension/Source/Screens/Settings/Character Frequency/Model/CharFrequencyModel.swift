struct CharFrequencyModel: Codable {
    var daily: Int

    init(_ daily: Int) {
        self.daily = daily
    }
}
