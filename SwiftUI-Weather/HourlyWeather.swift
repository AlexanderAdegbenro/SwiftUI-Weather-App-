//
//  HourlyWeather.swift
//  SwiftUI-Weather
//
//  Created by Alexander Adgebenro on 8/21/22.
//

import Foundation
struct HourlyWeather: Codable, Identifiable {
    
    var id: Date {
        return time
    }
    
    var time: Date
    var temperature: Double
    var icon: Weather.Icon
    
}
