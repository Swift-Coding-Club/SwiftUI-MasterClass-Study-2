//
//  LocatgionModel.swift
//  Africa
//
//  Created by Tony Lim on 2023/08/20.
//

import Foundation
import MapKit

struct NationParkLocation: Codable, Identifiable {
    var id: String
    var name: String
    var image: String
    var latitude: Double
    var longitude: Double
    
    // Computed Property
    var location: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
    }
}
