//
//  String+Extension.swift
//  MVVM_Weather
//
//  Created by Chung Wussup on 1/26/24.
//

import Foundation

extension String {
    func escaped() -> String {
        return self.addingPercentEncoding(withAllowedCharacters: .urlHostAllowed) ?? self
    }
    

}
