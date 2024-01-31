//
//  WeatherListViewModel.swift
//  MVVM_Weather
//
//  Created by Chung Wussup on 1/26/24.
//

import Foundation

class WeatherListViewModel {
    private var weatherViewModels = [WeatherViewModel]()
    
    func addWeatherViewModel(_ vm: WeatherViewModel) {
        weatherViewModels.append(vm)
    }
    
    func numberOfRows(_ section: Int) -> Int {
        return weatherViewModels.count
    }
    
    func modelAt(_ index:Int) -> WeatherViewModel {
        return weatherViewModels[index]
    }
    
}

class WeatherViewModel {
    let weather: WeatherResponse
    
    init(weather: WeatherResponse) {
        self.weather = weather
        print(weather)
    }
    
    var city: String {
        print(weather.name)
        return weather.name
    }
    
    var temperature: Double {
        print(weather.main.temp)
        return weather.main.temp
    }
    
    
}
