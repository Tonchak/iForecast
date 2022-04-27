//
//  WeatherDailyItem.swift
//  Forecast
//
//  Created by Vitaliy Tonchak on 25/4/22.
//

import Foundation

struct WeatherDailyItem: Codable {
    
    let dt: Int?
    let sunrise, sunset: Int?
    let moonrise, moonset: Int?
    let moonPhase: Float?
    let temp: DailyTemperature?
    let feelsLike: FeelingTemperature?
    let pressure: Int?
    let humidity: Int?
    let dewPoint: Double?
    let windSpeed: Float?
    let windDeg: Int?
    let windGust: Double?
    let weather: [Weather]?
    let clouds: Int?
    let pop: Double?
    let rain: Float?
    let uvi: Float?
    
    enum CodingKeys: String, CodingKey {
        case dt = "dt"
        case sunrise = "sunrise"
        case sunset = "sunset"
        case moonrise = "moonrise"
        case moonset = "moonset"
        case moonPhase = "moon_phase"
        case temp = "temp"
        case feelsLike = "feels_like"
        case pressure = "pressure"
        case humidity = "humidity"
        case dewPoint = "dew_point"
        case windSpeed = "wind_speed"
        case windDeg = "wind_deg"
        case windGust = "wind_gust"
        case weather = "weather"
        case clouds = "clouds"
        case pop = "pop"
        case rain = "rain"
        case uvi = "uvi"
    }
}

