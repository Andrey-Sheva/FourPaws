//
//  ApiService.swift
//  FourPaws
//
//  Created by Андрей Шевчук on 17.02.2021.
//

import Foundation
import Alamofire
import Combine

struct ApiService {
    static func request<T: Decodable, E: Error> (url: String,
                                          method: HTTPMethod,
                                          parameters: Parameters? = nil,
                                          decoder: JSONDecoder = JSONDecoder(),
                                          headers: HTTPHeaders? = nil) -> Future<T,E> {
        return Future( { promise in
            AF.request(url,
                       method: method,
                       parameters: parameters,
                       headers: headers).responseDecodable(decoder: decoder) { (response: DataResponse<T, AFError>) in
                        switch response.result {
                        case .success(let data):
                            promise(.success(data))
                        case .failure(let error):
                            promise(.failure(NSError(domain: error.destinationURL?.absoluteString ?? "", code: error.responseCode ?? 0) as! E
                            ))
                        }
                }
            }
        )
    }
}
