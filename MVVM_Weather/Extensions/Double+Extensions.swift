//
//  Double+Extensions.swift
//  MVVM_Weather
//
//  Created by Chung Wussup on 1/26/24.
//

import Foundation

extension Double {
    
    func formatAsDegree() -> String {        
        return String(format: "%0.f°", self)
    }
}
