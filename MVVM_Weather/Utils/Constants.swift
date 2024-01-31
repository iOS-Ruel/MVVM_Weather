//
//  Constants.swift
//  MVVM_Weather
//
//  Created by Chung Wussup on 1/26/24.
//

import Foundation


struct Constants {
    struct Urls {
        static func urlForWeatherByCity(city: String) -> URL {
//            let userDefaults = UserDefaults.standard
//            let unit = (userDefaults.value(forKey: "unit") as? String) ?? "imperial"
            
            return URL(string: "https://api.openweathermap.org/data/2.5/weather?q=\(city.escaped())&APPID=9a3373413b60bce2d0950a10d0e4363c&units=imperial")!
        }
    }
}
