//
//  ApplicationAssembly.swift
//  Forecast
//
//  Created by Vitaliy Tonchak on 23/4/22.
//

import PilgrimDI
import UIKit


class ApplicationAssembly: PilgrimAssembly {
    
    private(set) var coreComponents = AssemblyHolder.shared(CoreComponents.self)
    
    // MARK: - Main Assembly
    
    func window() -> UIWindow {
        shared(UIWindow(frame: UIScreen.main.bounds)) { [self] (window: UIWindow) in
            window.rootViewController = rootTabbarController()
        }
    }
    
    func weatherController() -> WeatherViewController {
        AssemblyHolder.shared(WeatherAssembly.self).weatherModule()
    }
    
    func webpageController() -> WebpageViewController {
        AssemblyHolder.shared(WebpageAssembly.self).viewModule()
    }
    
    func rootTabbarController() -> BaseTabController {
        shared(BaseTabController(weather: weatherController(), webpage: webpageController(), assembly: self))
    }
}
