//
//  LoginViewModel.swift
//  FourPaws
//
//  Created by Андрей Шевчук on 17.02.2021.
//

import Foundation
import Combine
import Alamofire

final class LoginViewModel: ObservableObject {
    @Published var username: String = ""
    @Published var password: String = ""
    @Published var visiblePassword: Bool = true
    
    func changeVisiblePasword() {
        self.visiblePassword.toggle()
    }
    
    func login() -> Future<LoginModel, Error> {
        let method = HTTPMethod.post
        let url = "http://25.49.250.186:8080/login"
        return ApiService.request(url: url,
                                  method: method,
                                  parameters: ["email": username, "password" : password])
    }
}
