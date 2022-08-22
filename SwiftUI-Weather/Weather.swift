//
//  Weather.swift
//  SwiftUI-Weather
//
//  Created by Alexander Adgebenro on 8/21/22.
//

import SwiftUI
struct Weather: Codable {
    
    var current: HourlyWeather
    var hours: Weather.List<HourlyWeather>
    var week: Weather.List<DailyWeather>
    
    enum CodingKeys: String, CodingKey {
        case current = "currently"
        case hours = "hourly"
        case week = "daily"
    }
}

extension Weather {
    struct List<T: Codable & Identifiable>: Codable {
        var list: [T]
        
        enum CodingKeys: String, CodingKey{
            case list = "data"
        }
        
        
    }
}

