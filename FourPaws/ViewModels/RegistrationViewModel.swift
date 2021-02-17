//
//  RegistrationViewModel.swift
//  FourPaws
//
//  Created by Андрей Шевчук on 17.02.2021.
//

import Foundation

final class RegistrationViewModel: ObservableObject {
    @Published var email: String = ""
    @Published var username: String = ""
    @Published var password: String = ""
    @Published var checkPassword: String = ""
    @Published var visiblePassword: Bool = true
    @Published var visibleChekPassword: Bool = true
}
