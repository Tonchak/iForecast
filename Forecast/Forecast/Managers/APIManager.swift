//
//  APIManager.swift
//  Forecast
//
//  Created by Vitaliy Tonchak on 25/4/22.
//

import Foundation
import Alamofire

class APIManager {
    
    // MARK: - Initialization
    
    static let shared: APIManager = {
        let instance = APIManager()
        return instance
    }()
    
    private init() {}
    
    // MARK: -
    
    func fetchWeather(_ config: AppConfig!, completion: @escaping (_ report: WeatherReport?) -> Void) {
        
        let params: [String: String] = ["lat": config.city.lat, "lon": config.city.lon, "exclude": "alerts", "appid": config.apiKey]
        
        AF.request(config.serviceURL, parameters: params)
            .validate()
            .responseDecodable(of: WeatherReport.self) { (response) in
                
                guard let report = response.value else {
                    completion(nil)
                    return
                }
                
                completion(report)
                
            }
        
    }
    
    // MARK: -
    
    
}
