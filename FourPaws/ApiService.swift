//
//  ApiService.swift
//  FourPaws
//
//  Created by Андрей Шевчук on 17.02.2021.
//

import Foundation
import Alamofire
import Combine

class WebService {
    func login()  -> AnyPublisher<LoginModel, Error>{
        let urlString = ""
        let decoder = JSONDecoder()
        
        guard let url = URL(string: urlString) else {
            fatalError() // customize error handling
        }
        
        return URLSession.shared.dataTaskPublisher(for: url)
            .map { $0.data }
            .decode(type: LoginModel.self, decoder: decoder)
            .map { $0 }
            .receive(on: RunLoop.main)
            .eraseToAnyPublisher()
    }
}
