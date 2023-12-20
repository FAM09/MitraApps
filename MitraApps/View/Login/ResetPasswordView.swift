//
//  ResetPasswordView.swift
//  MitraApps
//
//  Created by Faiz Azhari Mursid on 23/12/23.
//

import SwiftUI

struct ResetPasswordView: View {
    @State private var isSecurePasswordField: Bool = false
    @State private var newPasswordValue: String = ""
    @State private var confirmNewPasswordValue: String = ""
    
    var body: some View {
        VStack(alignment: .center) {
            HeaderView(hideLoginButton: true)
            
            VStack(alignment: .leading) {
                Text("Reset password")
                  .font(
                    Font.custom("Inter", size: 28)
                      .weight(.bold)
                  )
                  .foregroundColor(Color(red: 0.09, green: 0.09, blue: 0.1))
                  .padding(.bottom, 1)
                
                Text("Masukan password baru untuk akun anda")
                  .font(Font.custom("Inter", size: 12))
                  .foregroundColor(Color(red: 0.51, green: 0.51, blue: 0.53))
                  .padding(.bottom, 32)
                
                InputTextFieldWithLabel(isSecure: isSecurePasswordField, label: "Masukkan password baru", placeholder: "New password", value: $newPasswordValue)
                
                HStack(alignment: .center) {
                    Image(systemName: isSecurePasswordField ? "checkmark.square" : "square")
                        .foregroundColor(.secondary)
                        .onTapGesture {
                            isSecurePasswordField.toggle()
                        }
                    
                    Text("Tampilkan Password")
                        .font(Font.custom("Inter", size: 12))
                        .foregroundColor(Color(red: 0.09, green: 0.09, blue: 0.1))
                    
                }
                .padding(.bottom, 32)
                
                InputTextFieldWithLabel(isSecure: false, label: "Masukkan ulang password baru", placeholder: "Confirm password", value: $newPasswordValue)
                
                HStack(alignment: .center) {
                    Image(systemName: isSecurePasswordField ? "checkmark.square" : "square")
                        .foregroundColor(.secondary)
                        .onTapGesture {
                            isSecurePasswordField.toggle()
                        }
                    
                    Text("Tampilkan Password")
                        .font(Font.custom("Inter", size: 12))
                        .foregroundColor(Color(red: 0.09, green: 0.09, blue: 0.1))
                    
                }
                .padding(.bottom, 32)
                
                HStack(alignment: .center, spacing: 16) {
                    ButtonColor(label: "Atur ulang password")
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
}

#Preview {
    ResetPasswordView()
}
