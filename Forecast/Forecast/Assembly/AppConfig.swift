//
//  AppConfig.swift
//  Forecast
//
//  Created by Vitaliy Tonchak on 25/4/22.
//

import Foundation

protocol AppConfig {
    
    var serviceURL: URL { get }
    var apiKey: String { get }
    var daysToRetrieve: Int8 { get }
    
    var city: StagingCity { get }
    
}
