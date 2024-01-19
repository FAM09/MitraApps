//
//  LoginView.swift
//  MitraApps
//
//  Created by Faiz Azhari Mursid on 20/12/23.
//

import SwiftUI

struct LoginView: View {
    @State private var isSecurePasswordField: Bool = false
    @State private var passwordValue: String = ""
    @State private var usernameValue: String = ""
    
    var body: some View {
        VStack(alignment: .center) {
            
            VStack(alignment: .leading) {
                
                Text("Selamat datang")
                    .font(
                        Font.custom("Inter", size: 28)
                            .weight(.bold)
                    )
                    .padding(.bottom, 32)
                
                Text("Selamat datang di aplikasi MitraApps, platform pengembang bisnis anda")
                    .font(Font.custom("Inter", size: 14))
                    .foregroundColor(Color(red: 0.51, green: 0.51, blue: 0.53))
                    .padding(.bottom, 32)
                
                InputTextFieldWithLabel(isSecure: false, label: "Username", placeholder: "username", value: $usernameValue)
                    .padding(.bottom, 32)
                
                InputTextFieldWithLabel(isSecure: isSecurePasswordField, label: "Password", placeholder: "password", value: $passwordValue)
                
                HStack(alignment: .center) {
                    Image(systemName: isSecurePasswordField ? "checkmark.square" : "square")
                        .foregroundColor(.secondary)
                        .onTapGesture {
                            isSecurePasswordField.toggle()
                        }
                    
                    Text("Tampilkan Password")
                        .font(Font.custom("Inter", size: 12))
                        .foregroundColor(Color(red: 0.09, green: 0.09, blue: 0.1))
                    
                    Spacer()
                    
                    NavigationLink(destination: ForgotPasswordView()) {
                        Text("Lupa password?")
                            .font(
                                Font.custom("Inter", size: 12)
                                    .weight(.semibold)
                            )
                            .foregroundColor(Color(red: 0.07, green: 0.2, blue: 0.47))
                    }
                }
                .padding(.bottom, 32)
                
                ButtonColor(label: "Login")
                
                Spacer()
                
                Copyright(val: "KAI")
            }
            .padding(.all, 32.0)
        }
        .navigationBarTitle("Login")
        .navigationBarTitleDisplayMode(.inline)
        .statusBar(hidden: true)
    }
}

#Preview {
    LoginView()
}


