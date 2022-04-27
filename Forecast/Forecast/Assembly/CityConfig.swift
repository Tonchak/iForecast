//
//  City.swift
//  Forecast
//
//  Created by Vitaliy Tonchak on 26/4/22.
//

import Foundation

protocol CityConfig {
    
    var lon: String { get }
    var lat: String { get }
    var zipCode: String { get }
    var name: String { get }
    
}
