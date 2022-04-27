//
//  WeatherPresenter.swift
//  Forecast
//
//  Created by Vitaliy Tonchak on 24/4/22.
//

import Foundation

protocol WeatherViewControllerViewInput: AnyObject {
    func didReceiveCurrentWeatherData(_ data: WeatherElement?)
    func didReceiveWeatherConditions(_ forecast: [WeatherDailyItem]?)
}

protocol WeatherInteractorInput: AnyObject {
    func setupConfig(_ config: AppConfig!)
    func fetchForecast()
}

protocol WeatherRouterInput: AnyObject {
}


class WeatherPresenter {
    
    var router: WeatherRouterInput?
    var interactor: WeatherInteractorInput?
    weak var view: WeatherViewControllerViewInput?
    
}


extension WeatherPresenter: WeatherViewControllerViewOutput {
    
    func setupConfig(_ config: AppConfig!) {
        interactor?.setupConfig(config)
    }
    
    func viewDidAppear() {
        interactor?.fetchForecast()
    }
    
}


extension WeatherPresenter: WeatherInteractorOutput {
    
    func didReceiveWeatherData(_ data: WeatherElement?) {
        view?.didReceiveCurrentWeatherData(data)
    }
    
    func didReceiveForecast(_ dailyForecast: [WeatherDailyItem]?) {
        view?.didReceiveWeatherConditions(dailyForecast)
    }
    
}
