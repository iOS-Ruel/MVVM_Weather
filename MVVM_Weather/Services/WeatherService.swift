//
//  WeatherService.swift
//  MVVM_Weather
//
//  Created by Chung Wussup on 1/26/24.
//

import Foundation


struct Resource<T> {
    let url: URL
    let parse: (Data) -> T?
}


final class WeatherService {
    //제네릭타입을 이용해 url과 데이터를 전달받음
    func load<T>(resource: Resource<T>, completion: @escaping(T?) -> ()) {
        URLSession.shared.dataTask(with: resource.url) { data, resonse, error in
                    
            if let data = data {
                DispatchQueue.main.async {
                    completion(resource.parse(data))
                }
            } else {
                completion(nil)
            }
        }
        .resume()
    }
}

