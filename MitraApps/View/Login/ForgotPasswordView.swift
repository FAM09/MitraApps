//
//  ForgotPasswordView.swift
//  MitraApps
//
//  Created by Faiz Azhari Mursid on 21/12/23.
//

import SwiftUI

struct ForgotPasswordView: View {
    @State private var emailValue: String = ""
    
    var body: some View {
        NavigationView {
            VStack(alignment: .center) {
                HeaderView(hideLoginButton: true)
                
                VStack(alignment: .leading) {
                    Text("Lupa password")
                      .font(
                        Font.custom("Inter", size: 28)
                          .weight(.bold)
                      )
                      .foregroundColor(Color(red: 0.09, green: 0.09, blue: 0.1))
                      .padding(.bottom, 1)
                    
                    Text("Masukan email yang terdaftar untuk pemulihan password")
                      .font(Font.custom("Inter", size: 12))
                      .foregroundColor(Color(red: 0.51, green: 0.51, blue: 0.53))
                      .padding(.bottom, 32)
                    
                    InputTextFieldWithLabel(isSecure: false, label: "Email", placeholder: "email@email.com", value: $emailValue)
                        .padding(.bottom, 32)
                    
                    HStack(alignment: .center, spacing: 16) {
                        NavigationLink(destination: LoginView()) {
                            ButtonPlain(val: "Batalkan")
                        }
                        
                        NavigationLink(destination: SendEmailSuccess()) {
                            ButtonColor(label: "Kirim Email")
                        }
                    }
                    .padding(0)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    
                    Spacer()
                    
                    Copyright(val: "KAI")
                    
                    
                }
                .padding(.all, 32.0)
            }
            .navigationBarTitle("")
            .navigationBarHidden(true)
            .navigationBarBackButtonHidden(true)
            .statusBarHidden()
        }
        .navigationBarTitle("")
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden()
    }
}

#Preview {
    ForgotPasswordView()
}
