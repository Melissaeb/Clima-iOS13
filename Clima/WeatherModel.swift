//
//  WeatherModel.swift
//  Clima
//
//  Created by Melissa Elliston-Boyes on 14/11/2024.
//  Copyright © 2024 App Brewery. All rights reserved.
//

import Foundation

struct WeatherModel {
    let conditionId: Int
    let cityName: String
    let temperature: Double
    
    var temperatureString: String {
        return String(format: "%.1f", temperature)
    }
    
    var conditionName: String {
        switch conditionId {
        case 210...221:
            return " cloud.bolt"
        case 200...232:
            return "cloud.bolt.rain"
        case 300...321:
            return "cloud.drizzle"
        case 500...501:
            return "cloud.rain"
        case 502...531:
            return "cloud.heavyrain"
        case 600...602:
            return "snowflake"
        case 611...622:
            return "cloud.sleet"
        case 701...711:
            return "cloud.fog"
        case 721:
            return "sun.haze"
        case 731:
            return "sun.dust"
        case 741:
            return "cloud.fog"
        case 751...762:
            return "sun.dust"
        case 771:
            return "cloud.rain"
        case 781:
            return "tornado"
        case 800:
            return "sun.max"
        case 801...802:
            return "cloud.sun"
        default:
            return "cloud"
        }
    }
}
