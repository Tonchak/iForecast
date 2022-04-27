//
//  WeatherInteractor.swift
//  Forecast
//
//  Created by Vitaliy Tonchak on 24/4/22.
//

import Foundation

protocol WeatherInteractorOutput: AnyObject {
    func didReceiveWeatherData(_ data: WeatherElement?)
    func didReceiveForecast(_ dailyForecast: [WeatherDailyItem]?)
}

class WeatherInteractor {
    
    weak var output: WeatherInteractorOutput?
    private var config: AppConfig!
    
}


extension WeatherInteractor: WeatherInteractorInput {
 
    func setupConfig(_ config: AppConfig!) {
        self.config = config
    }
    
    func fetchForecast() {
        APIManager.shared.fetchWeather(self.config) { report in
            
            self.output?.didReceiveWeatherData(report?.current)
            self.output?.didReceiveForecast(report?.daily)
        }
    }
    
}
