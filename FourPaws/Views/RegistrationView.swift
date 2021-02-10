//
//  RegistrationView.swift
//  FourPaws
//
//  Created by Андрей Шевчук on 10.02.2021.
//

import SwiftUI

struct RegistrationView: View {
    @State var email: String = ""
    @State var username: String = ""
    @State var password: String = ""
    @State var checkPassword: String = ""
    @State var visiblePassword: Bool = true
    @State var visibleChekPassword: Bool = true
    
    var textFieldWidth = UIScreen.main.bounds.width - 50
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color.red, Color.yellow]),
                           startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            VStack {
                Text("Реєстрація")
                    .padding()
                    .font(.title)
                TextField("Електронна пошта", text: $email)
                    .padding()
                    .background(Color.white)
                    .clipShape(RoundedRectangle(cornerRadius: 50))
                    .frame(width: textFieldWidth)
                    .padding(.top, 25)
                TextField("Ім'я", text: $username)
                    .padding()
                    .background(Color.white)
                    .clipShape(RoundedRectangle(cornerRadius: 50))
                    .padding(.top, 25)
                    .frame(width: textFieldWidth)
                
                
                HStack(spacing: 15) {
                    VStack {
                        if self.visiblePassword {
                            TextField(LoginStrings.password, text: $password)
                        } else {
                            SecureField(LoginStrings.password, text: $password)
                        }
                    }
                    Button(action: {
                        self.visiblePassword.toggle()
                    }, label: {
                        Image(systemName: self.visiblePassword ? "eye.slash.fill" : "eye.fill")
                            .foregroundColor(.black)
                    })
                }
                .padding()
                .background(Color.white)
                .clipShape(RoundedRectangle(cornerRadius: 50))
                .padding(.top, 25)
                .frame(width: textFieldWidth)
                
                
                HStack(spacing: 15) {
                    VStack {
                        if self.visibleChekPassword {
                            TextField(LoginStrings.password, text: $checkPassword)
                        } else {
                            SecureField(LoginStrings.password, text: $checkPassword)
                        }
                    }
                    Button(action: {
                        self.visibleChekPassword.toggle()
                    }, label: {
                        Image(systemName: self.visiblePassword ? "eye.slash.fill" : "eye.fill")
                            .foregroundColor(.black)
                    })
                }
                .padding()
                .background(Color.white)
                .clipShape(RoundedRectangle(cornerRadius: 50))
                .padding(.top, 25)
                .frame(width: textFieldWidth)
                
                Button(action: {
                    
                }) {
                    Text(LoginStrings.login)
                        .foregroundColor(.black)
                        .padding(.vertical)
                        .frame(width: textFieldWidth)
                        .background(Color.white)
                        .cornerRadius(50)
                        .padding(.top, 25)
                }
                
                Text("Do have an account?")
                    .padding(.top, 25)
                    .font(.headline)
                
                Button("Sign in with Google or Facebook ", action: {
                    
                })
                .padding(.top, 10)
            }
        }
        
    }
}
