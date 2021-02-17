//
//  LoginModel.swift
//  FourPaws
//
//  Created by Андрей Шевчук on 17.02.2021.
//

import Foundation

struct LoginModel: Decodable, Identifiable {
    var id: UUID = UUID()
    let name: String?
    let password: String?
    
    static var placeholder: LoginModel {
        return LoginModel(name: nil, password: nil)
    }
}
