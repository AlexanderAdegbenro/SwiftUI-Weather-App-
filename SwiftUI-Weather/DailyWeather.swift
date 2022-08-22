//
//  DailyWeather.swift
//  SwiftUI-Weather
//
//  Created by Alexander Adgebenro on 8/21/22.
//

import SwiftUI
struct DailyWeather: Codable, Identifiable {
    
    var id: Date {
        return time
    }
    
    
    var time: Date
    var maxTemprature: Double
    var minTemprature: Double
    var icon: Weather.Icon
    
    enum CodingKeys: String, CodingKey {
        
        
        case time = "time"
        case maxTemprature = "temperatureHigh"
        case minTemprature = "temperatureLow"
        case icon = "icon"
    }
    
    
}
