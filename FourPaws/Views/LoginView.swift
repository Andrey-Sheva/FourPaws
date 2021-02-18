//
//  LoginView.swift
//  FourPaws
//
//  Created by Андрей Шевчук on 10.02.2021.
//

import SwiftUI
import Combine

struct LoginView: View {
    @ObservedObject private var viewModel: LoginViewModel = LoginViewModel()
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color.red, Color.yellow]),
                           startPoint: .top, endPoint: .bottom)
            VStack {
                Image("logo")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Text(LoginStrings.login)
                    .font(.title)
                    .fontWeight(.bold)
                    .padding(.top, 35)
                TextField(LoginStrings.username, text: $viewModel.username)
                    .padding()
                    .background(Color.white)
                    .clipShape(RoundedRectangle(cornerRadius: 50))
                    .padding(.top, 25)
                
                HStack(spacing: 15) {
                    VStack {
                        if viewModel.visiblePassword {
                            TextField(LoginStrings.password, text: $viewModel.password)
                        } else {
                            SecureField(LoginStrings.password, text: $viewModel.password)
                        }
                    }
                    Button(action: {
                        viewModel.changeVisiblePasword()
                    }, label: {
                        Image(systemName: viewModel.visiblePassword ? "eye.slash.fill" : "eye.fill")
                            .foregroundColor(.black)
                    })
                }
                .padding()
                .background(Color.white)
                .clipShape(RoundedRectangle(cornerRadius: 50))
                .padding(.top, 25)
                
                Button(action: {
                   let response = self.viewModel.login()
                }) {
                    Text(LoginStrings.login)
                        .foregroundColor(.black)
                        .padding(.vertical)
                        .frame(width: UIScreen.main.bounds.width - 150)
                }
                .background(Color.white)
                .cornerRadius(50)
                .padding(.top, 25)
                
                Text(LoginStrings.haveAnAccount)
                    .padding(.top, 25)
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Text(LoginStrings.register)
                })
                .padding(.top, 2)
                
                Text(LoginStrings.or)
                    .padding(.top, 2)
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Text(LoginStrings.signInWithGoogle)
                })
                .padding(.top, 2)
            }
            .padding(.horizontal, 25)
        }
        .edgesIgnoringSafeArea(.all)
    }
}
