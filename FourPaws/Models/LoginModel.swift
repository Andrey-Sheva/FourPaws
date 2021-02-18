//
//  LoginModel.swift
//  FourPaws
//
//  Created by Андрей Шевчук on 17.02.2021.
//

import Foundation

struct LoginModel: Decodable{
    let email: String?
    let password: String?
    
    static var placeholder: LoginModel {
        return LoginModel(email: nil, password: nil)
    }
}
