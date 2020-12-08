//
//  PlaceModel.swift
//  MyTravelProject
//
//  Created by Siarhei Dubko on 8.12.20.
//

import Foundation

struct Place {
    var name: String
    var location: String
    var type: String
    var image: String
    
    static let countryNames = [
        "Беларусь", "Германия", "Португалия", "Россия", "Италия"
    ]
    
    static func getPlaces() -> [Place] {
        var places = [Place]()
        for place in countryNames {
            places.append(Place(name: place, location: "Минск", type: "город", image: place))
        }
        return places
    }
    
}
