import Foundation

struct Country: Decodable {
    let name: CountryName
    let flags: ImageLinks
}

struct CountryName: Decodable {
    let common: String
    let official: String
}

struct ImageLinks: Decodable {
    let png: String
    let svg: String
}
