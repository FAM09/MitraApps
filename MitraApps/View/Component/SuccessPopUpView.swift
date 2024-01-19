//
//  SuccessPopUpView.swift
//  MitraApps
//
//  Created by Faiz Azhari Mursid on 31/12/23.
//

import SwiftUI

struct SuccessPopUpView: View {
    let caption: String
    
    var body: some View {
        VStack(alignment: .leading, spacing: 24) {
            VStack(alignment: .center, spacing: 16) {
                Image("Success-img")
                    .resizable()
                    .scaledToFit()
                
                VStack(alignment: .center, spacing: 0) {
                    Text("Berhasil!")
                      .font(
                        Font.custom("Inter", size: 30)
                          .weight(.bold)
                      )
                      .foregroundColor(Color(red: 0.09, green: 0.09, blue: 0.1))
                    
                    Text(caption)
                      .font(Font.custom("Inter", size: 16))
                      .multilineTextAlignment(.center)
                      .foregroundColor(Color(red: 0.51, green: 0.51, blue: 0.53))
                      .frame(maxWidth: .infinity, alignment: .top)
                    
                }
                .padding(0)
                .frame(maxWidth: .infinity, alignment: .center)
            }
            .padding(0)
        }
        .padding(24)
        .frame(width: 326, height: 326, alignment: .topLeading)
        .background(.white)
        .cornerRadius(12)
        .shadow(color: Color(red: 0.12, green: 0.12, blue: 0.12).opacity(0.2), radius: 6, x: 0, y: 0)
    }
}

#Preview {
    SuccessPopUpView(caption: "Dokumen akan di proses paling lambat 14 hari. silahkan cek email anda secara berkala.")
}
