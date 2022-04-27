//
//  WeatherViewController.swift
//  Forecast
//
//  Created by Vitaliy Tonchak on 24/4/22.
//

import UIKit

protocol WeatherViewControllerViewOutput: AnyObject {
    func setupConfig(_ config: AppConfig!)
    func viewDidAppear()
}

class WeatherViewController: UIViewController {

    var presenter: WeatherViewControllerViewOutput?
    var configuration: AppConfig!
    
    lazy var tableView: UITableView = {
        
        let tView = UITableView(frame: .zero, style: .grouped)
        
        tView.rowHeight = UITableView.automaticDimension
        tView.sectionHeaderHeight = UITableView.automaticDimension
        tView.dataSource = self
        tView.delegate = self
        
        return tView
        
    }()
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .secondarySystemBackground
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        presenter?.viewDidAppear()
    }

}


extension WeatherViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        UITableViewCell()
    }
}


extension WeatherViewController: UITableViewDelegate {
    
}

// MARK: - View Input

extension WeatherViewController: WeatherViewControllerViewInput {
    
    func didReceiveCurrentWeatherData(_ data: WeatherElement?) {
        
    }
    
    func didReceiveWeatherConditions(_ forecast: [WeatherDailyItem]?) {
        
    }
    
}


extension WeatherViewController {
    var config: AppConfig! {
        get {
            return configuration
        }
        set (newValue) {
            configuration = newValue!
            
            presenter?.setupConfig(newValue)
            
        }
    }
}
