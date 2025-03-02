//
//  CityData.swift
//  Cities
//
//  Created by Billy Conway on 3/2/25.
//

import Foundation

struct CityData {
    static let cities: [City] = [
        City(name: "New York", state: "NY", description: "The city that never sleeps."),
        City(name: "Los Angeles", state: "CA", description: "Known for Hollywood and sunny beaches."),
        City(name: "Chicago", state: "IL", description: "Famous for deep-dish pizza and skyscrapers."),
        City(name: "Houston", state: "TX", description: "A large metropolitan city in Texas."),
        City(name: "Phoenix", state: "AZ", description: "Known for its year-round sun and desert landscapes."),
        City(name: "Philadelphia", state: "PA", description: "Rich in American history and culture."),
        City(name: "San Antonio", state: "TX", description: "Home of the Alamo."),
        City(name: "San Diego", state: "CA", description: "Known for its beautiful coastline."),
        City(name: "Dallas", state: "TX", description: "Another big city in the Lone Star State."),
        City(name: "San Jose", state: "CA", description: "The heart of Silicon Valley.")
    ]
}
