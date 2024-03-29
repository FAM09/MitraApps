//
//  SendEmailSuccess.swift
//  MitraApps
//
//  Created by Faiz Azhari Mursid on 23/12/23.
//

import SwiftUI

struct SendEmailSuccess: View {
    @Environment(\.presentationMode) var presentMode: Binding<PresentationMode>
    
    var body: some View {
        VStack(alignment: .center) {
            Spacer()
            
            Image("Envlope")
            
            Text("Email terkirim!")
              .font(
                Font.custom("Inter", size: 28)
                  .weight(.bold)
              )
              .foregroundColor(Color(red: 0.09, green: 0.09, blue: 0.1))
            
            Text("Cek kotak masuk atau folder spam di email anda.")
              .font(Font.custom("Inter", size: 14))
              .multilineTextAlignment(.center)
              .foregroundColor(Color(red: 0.51, green: 0.51, blue: 0.53))
              .frame(maxWidth: .infinity, alignment: .top)
            
            
            NavigationLink(destination: LoginView()) {
                ButtonColor(label: "Kembali ke halaman login")
                    .onTapGesture {
                        self.presentMode.wrappedValue.dismiss()
                    }
            }
            
            Spacer()
            
            Copyright(val: "KAI")
        }
        .padding(.all, 32)
        .navigationBarTitle("Email terkirim")
        .navigationBarTitleDisplayMode(.inline)
        .statusBar(hidden: true)
    }
}

#Preview {
    SendEmailSuccess()
}
