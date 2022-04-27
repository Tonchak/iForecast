//
//  DailyTemperature.swift
//  Forecast
//
//  Created by Vitaliy Tonchak on 25/4/22.
//

import Foundation

struct DailyTemperature: Codable {
    
    let day: Float?
    let min, max: Float?
    let night, eve, morn: Float?
    
}
