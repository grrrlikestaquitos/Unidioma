struct CharFrequencyModel: Codable {
    var charsPerDay: Int

    init(_ charsPerDay: Int) {
        self.charsPerDay = charsPerDay
    }
}
