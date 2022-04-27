//
//  BaseTabController.swift
//  Forecast
//
//  Created by Vitaliy Tonchak on 24/4/22.
//

import UIKit
import PilgrimDI

class BaseTabController: UITabBarController {

    private var weatherController: WeatherViewController!
    private var webController: UIViewController!
    private var assembly: ApplicationAssembly!
    
    private let titles = ["WEATHER", "WEBPAGE"]
    private let icons = ["cloud", "network"]
    private var controllers: Array<UIViewController>?
    
    // MARK: - Initialization
    
    init(weather: WeatherViewController, webpage: UIViewController, assembly: ApplicationAssembly) {
        super.init(nibName: nil, bundle: nil)
        
        self.weatherController = weather
        self.webController = webpage
        self.assembly = assembly
        
        weatherController.tabBarItem = itemForIndex(0)
        weatherController.config = assembly.coreComponents.config
        webController.tabBarItem = itemForIndex(1)
        controllers = [weatherController, webController]
        
        UITabBar.appearance().backgroundColor = .systemBackground
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        delegate = self
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        self.viewControllers = controllers
    }
    
    // MARK: - Setups

    private func itemForIndex(_ index: Int8) -> UITabBarItem {
        let item: UITabBarItem = UITabBarItem(title: titles[Int(index)], image: UIImage.init(systemName: icons[Int(index)]), selectedImage: nil)
        return item
    }
}


extension BaseTabController: UITabBarControllerDelegate {
    
    func tabBarController(_ tabBarController: UITabBarController, shouldSelect viewController: UIViewController) -> Bool {
        return true
    }
    
}
