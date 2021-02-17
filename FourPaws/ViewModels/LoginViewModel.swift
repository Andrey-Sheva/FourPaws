//
//  LoginViewModel.swift
//  FourPaws
//
//  Created by Андрей Шевчук on 17.02.2021.
//

import Foundation

final class LoginViewModel: ObservableObject {
    @Published var username: String = ""
    @Published var password: String = ""
    @Published var visiblePassword: Bool = true
    
    func changeVisiblePasword() {
        self.visiblePassword.toggle()
    }
}
