import UIKit

struct CountryDetails: Decodable {
    let name: CountryName
    let independent: Bool
    let capital: [String]
    let subregion: String
    let region: String
    let languages: [String:String]
    let borders: [String]
    let area: Float
    let maps: MapLinks
    let population: Int
    let flags: ImageLinks
    let coatOfArms: ImageLinks
    let startOfWeek: String
}

struct MapLinks: Decodable {
    let google: String?
    let openStreet: String?
    
    enum CodingKeys: String, CodingKey {
        case google = "googleMaps"
        case openStreet = "openStreetsMaps"
    }
}
