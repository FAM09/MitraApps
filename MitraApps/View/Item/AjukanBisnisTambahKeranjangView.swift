//
//  AjukanBisnisTambahKeranjangView.swift
//  MitraApps
//
//  Created by Faiz Azhari Mursid on 28/12/23.
//

import SwiftUI

struct AjukanBisnisTambahKeranjangView: View {
    @State private var isPresentedSheet: Bool = false
    @State private var isShowSuccesPopUp: Bool = false
    
    var body: some View {
        ZStack {
            VStack {
                Spacer()
                
                HStack(alignment: .center, spacing: 16) {
                    Button(action: {
                        withAnimation {
                            isPresentedSheet.toggle()
                        }
                    }) {
                        Text("Ajukan Bisnis")
                    }
                    .sheet(isPresented: $isPresentedSheet, content: {
                        LoginView()
                    })
                    
                    Divider()
                        .background(Color.black)
                        .frame(height: 42)
                    
                    Button(action: {
                        withAnimation {
                            isShowSuccesPopUp.toggle()
                        }
                    }) {
                        Image(systemName: "cart.badge.plus")
                            .frame(width: 18, height: 18)
                            .padding(.vertical, 12)
                    }
                }
                .padding(.horizontal, 16)
                .background(.white)
                .cornerRadius(6)
                .overlay(
                    RoundedRectangle(cornerRadius: 6)
                        .inset(by: 0.5)
                        .stroke(Color(red: 0.86, green: 0.88, blue: 0.89), lineWidth: 1)
                )
                .padding(.bottom, 10)
                .shadow(color: Color(red: 0.12, green: 0.12, blue: 0.12).opacity(0.2), radius: 6, x: 0, y: 0)
            }
            
            if isShowSuccesPopUp {
                SuccessPopUpView(caption: "Aset berhasil ditambahkan ke keranjang. Lanjutkan pengajuan melalui keranjang.")
                    .transition(.scale)
                    .onAppear {
                        DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
                            isShowSuccesPopUp.toggle()
                        }
                    }
            }
        }
    }
}

#Preview {
    AjukanBisnisTambahKeranjangView()
}
