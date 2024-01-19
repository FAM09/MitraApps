//
//  PengajuanBisnisForm.swift
//  MitraApps
//
//  Created by Faiz Azhari Mursid on 31/12/23.
//

import SwiftUI

struct PengajuanBisnisForm: View {
    @State private var namaLengkap: String = ""
    @State private var nomorTelp: String = ""
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text("Form pengajuan bisnis")
              .font(
                Font.custom("Inter", size: 20)
                  .weight(.bold)
              )
            
            VStack(alignment: .leading, spacing: 16) {
                HStack(spacing: 8) {
                    VStack {
                        InputTextFieldWithLabel(isSecure: true, label: "Nama Lengkap", placeholder: "e.g John Doe", value: $namaLengkap)
                        
                        InputTextFieldWithLabel(isSecure: true, label: "Email", placeholder: "johndoe@email.com", value: $namaLengkap)
                    }
                    
                    VStack {
                        InputTextFieldWithLabel(isSecure: true, label: "Nomor Telfon", placeholder: "62818101808", value: $namaLengkap)
                        
                        DatePickerView(label: "Tanggal Mulai Sewa")
                        
                    }
                }
                .padding(0)
                .frame(maxWidth: .infinity, alignment: .topLeading)
            }
            .padding(.horizontal, 0)
            .padding(.vertical, 16)
            .frame(maxWidth: .infinity, alignment: .topLeading)
        }
        .padding(24)
    }
}

#Preview {
    PengajuanBisnisForm()
}
