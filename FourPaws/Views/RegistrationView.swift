//
//  RegistrationView.swift
//  FourPaws
//
//  Created by Андрей Шевчук on 10.02.2021.
//

import SwiftUI

struct RegistrationView: View {
    @ObservedObject private var viewModel: RegistrationViewModel = RegistrationViewModel()
    
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
                TextField("Електронна пошта", text: $viewModel.email)
                    .padding()
                    .background(Color.white)
                    .clipShape(RoundedRectangle(cornerRadius: 50))
                    .frame(width: textFieldWidth)
                    .padding(.top, 25)
                TextField("Ім'я", text: $viewModel.username)
                    .padding()
                    .background(Color.white)
                    .clipShape(RoundedRectangle(cornerRadius: 50))
                    .padding(.top, 25)
                    .frame(width: textFieldWidth)
                
                
                HStack(spacing: 15) {
                    VStack {
                        if viewModel.visiblePassword {
                            TextField(LoginStrings.password, text: $viewModel.password)
                        } else {
                            SecureField(LoginStrings.password, text: $viewModel.password)
                        }
                    }
                    Button(action: {
                        viewModel.visiblePassword = !viewModel.visiblePassword
                    }, label: {
                        Image(systemName: viewModel.visiblePassword ? "eye.slash.fill" : "eye.fill")
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
                        if viewModel.visibleChekPassword {
                            TextField(LoginStrings.password, text: $viewModel.checkPassword)
                        } else {
                            SecureField(LoginStrings.password, text: $viewModel.checkPassword)
                        }
                    }
                    Button(action: {
                        viewModel.visibleChekPassword = !viewModel.visibleChekPassword
                    }, label: {
                        Image(systemName: viewModel.visibleChekPassword ? "eye.slash.fill" : "eye.fill")
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
