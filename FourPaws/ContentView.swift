//
//  ContentView.swift
//  FourPaws
//
//  Created by Андрей Шевчук on 09.02.2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Login()
    }
}

struct Home: View {
    
    
    var body: some View {
        VStack {
            
            Spacer()
        }
    }
}

struct Login: View {
    @State var username: String = ""
    @State var password: String = ""
    @State var visiblePassword: Bool = false
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color.red, Color.yellow]),
                           startPoint: .top, endPoint: .bottom)
            VStack {
                Image("logo")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Text("Увійти")
                    .font(.title)
                    .fontWeight(.bold)
                    .padding(.top, 35)
                TextField("Ім'я", text: $username)
                    .padding()
                    .background(Color.white)
                    .clipShape(RoundedRectangle(cornerRadius: 50))
                    .padding(.top, 25)
                
                HStack(spacing: 15) {
                    VStack {
                        if self.visiblePassword {
                            TextField("Пароль", text: $password)
                        } else {
                            SecureField("Пароль", text: $password)
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
                
                Button(action: {}) {
                    Text("Увійти")
                        .foregroundColor(.black)
                        .padding(.vertical)
                        .frame(width: UIScreen.main.bounds.width - 150)
                }
                .background(Color.white)
                .cornerRadius(50)
                .padding(.top, 25)
                
                Text("Ще не маєте аккаунта?")
                    .padding(.top, 25)
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Text("Реєстрація")
                })
                .padding(.top, 2)
                
                Text("Або")
                    .padding(.top, 2)
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Text("Увійти за допомогою гугл")
                })
                .padding(.top, 2)
            }
            .padding(.horizontal, 25)
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
