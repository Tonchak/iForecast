//
//  CoreComponents.swift
//  Forecast
//
//  Created by Vitaliy Tonchak on 23/4/22.
//

import PilgrimDI

class CoreComponents: PilgrimAssembly {
    
    var config: AppConfig {
        return StagingAppConfig()
    }
    
}
