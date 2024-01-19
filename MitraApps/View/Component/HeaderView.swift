//
//  HeaderView.swift
//  MitraApps
//
//  Created by Faiz Azhari Mursid on 13/12/23.
//

import SwiftUI

struct HeaderView: View {
    var hideLoginButton: Bool
    
    var body: some View {
        HStack(alignment: .center, content: {
            NavigationLink(destination: HomeView()) {
                Image("LogoSpace")
                    .resizable()
                    .scaledToFit()
                    .padding(14)
            }
            
            Spacer()
            
            if hideLoginButton == false {
                NavigationLink {
                    LoginView()
                } label: {
                    HStack(alignment: .center, spacing: 8) {
                        Text("Login")
                            .font(
                                Font.custom("Inter", size: 16)
                                    .weight(.semibold)
                            )
                            .foregroundColor(.white)
                    }
                    .padding(.horizontal, 16)
                    .padding(.vertical, 12)
                    .background(Color(red: 0.07, green: 0.2, blue: 0.47))
                    .cornerRadius(6)
                    .padding()
                }
            }
        })
        .frame(height: 70.0)
        .background(.white)
        .overlay(
            Rectangle()
                .inset(by: 0.5)
                .stroke(Color(red: 0.87, green: 0.87, blue: 0.88), lineWidth: 1)
        )
    }
}

#Preview {
    HeaderView(hideLoginButton: false)
}
