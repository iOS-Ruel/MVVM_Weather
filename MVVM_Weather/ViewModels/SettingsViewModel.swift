//
//  SettingsViewModel.swift
//  MVVM_Weather
//
//  Created by Chung Wussup on 1/31/24.
//

import Foundation

enum Unit: String, CaseIterable {
    case celsius = "metric"
    case fahrenheit = "imparial"
}

extension Unit {
    var displayName: String {
        get {
            switch self {
            case .celsius:
                return "Celcius"
            case .fahrenheit:
                return "Fahrenheit"
            }
        }
    }
}

class SettingsViewModel {
    
    let units = Unit.allCases
    
    var selectedUnit: Unit {
        get {
            let userDefaults = UserDefaults.standard
            var unitValue = ""
            if let vale = userDefaults.value(forKey: "unit") as? String {
                unitValue = vale
            }
            return Unit(rawValue: unitValue)!
        }
        set {
            let userDefaults = UserDefaults.standard
            userDefaults.set(newValue.rawValue, forKey: "unit")
        }
    }
}
