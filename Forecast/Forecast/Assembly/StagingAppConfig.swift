//
//  StagingAppConfig.swift
//  Forecast
//
//  Created by Vitaliy Tonchak on 25/4/22.
//

import Foundation

class StagingAppConfig: AppConfig {
    
    var serviceURL: URL {
        URL(string: "https://api.openweathermap.org/data/2.5/onecall")!
    }
    
    var apiKey: String {
        "babae8a4362e71fdc634e8012e4739c5"
    }
    
    var daysToRetrieve: Int8 {
        3
    }
    
    var city: StagingCity {
        StagingCity()
    }
    
}
