//
//  main.swift
//  Forecast
//
//  Created by Vitaliy Tonchak on 23/4/22.
//

import Foundation
import UIKit
import PilgrimDI

class ForecastApplication: UIApplication {
    
    override init() {
        AssemblyHolder.defaultAssemblyType = ApplicationAssembly.self
    }
    
}

UIApplicationMain(CommandLine.argc, CommandLine.unsafeArgv, NSStringFromClass(ForecastApplication.self), NSStringFromClass(AppDelegate.self))
