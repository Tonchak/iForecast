//
//  WeatherReport.swift
//  Forecast
//
//  Created by Vitaliy Tonchak on 25/4/22.
//

import Foundation

struct WeatherReport: Codable {
    let lat: Double?
    let lon: Double?
    let timezone: String?
    let timezone_offset: Int?
    let current: WeatherElement?
    let minutely: [MinutelyItem]?
    let hourly: [WeatherElement]?
    let daily: [WeatherDailyItem]?
}

struct WeatherElement: Codable {
    let dt: Int?
    let sunrise: Int?
    let sunset: Int?
    let temp: Double?
    let feels_like: Double?
    let pressure: Int?
    let humidity: Int?
    let dew_point: Double?
    let uvi: Float?
    let clouds: Int?
    let visibility: Int?
    let wind_speed: Float?
    let wind_deg: Int?
    let wind_gust: Double?
    let weather: [Weather]?
}

struct Weather: Codable {
    let id: Int?
    let main: String?
    let description: String?
    let icon: String?
}


