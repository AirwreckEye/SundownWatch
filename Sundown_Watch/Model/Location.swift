import CoreLocation
import Foundation
import SwiftUI


// MARK: - Location
struct Location: Codable, Hashable, Identifiable {
    var id: Int
    var state: String
    var towns: [Town]

    enum CodingKeys: String, CodingKey {
        case id
        case state
        case towns
    }
}

// MARK: - Town
struct Town: Codable, Hashable, Identifiable {
    var id = UUID()
    var town: String
    var coordinates: Coordinates
    var townCoordinate: CLLocationCoordinate2D {
           CLLocationCoordinate2D(
               latitude: coordinates.lat,
               longitude: coordinates.long)
       }


    enum CodingKeys: String, CodingKey {
        case town
        case coordinates
    }
}


// MARK: - Coordinates
struct Coordinates: Codable, Hashable {
    var lat: Double
    var long: Double

    enum CodingKeys: String, CodingKey {
        case lat
        case long
    }
}



