//
//  TextFieldWithLabel.swift
//  MitraApps
//
//  Created by Faiz Azhari Mursid on 23/12/23.
//

import SwiftUI

struct InputTextFieldWithLabel: View {
    let isSecure: Bool
    let label: String
    let placeholder: String
    let value: Binding<String>
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(label)
                .font(
                    Font.custom("Inter", size: 14)
                        .weight(.bold)
                )
                .multilineTextAlignment(.leading)
            
            (isSecure ? AnyView(SecureField(placeholder, text: value)) : AnyView(TextField(placeholder, text: value)))
                .padding(.horizontal, 16)
                .padding(.vertical, 10)
                .overlay(
                    RoundedRectangle(cornerRadius: 6)
                        .stroke(Color(red: 0.71, green: 0.71, blue: 0.71), lineWidth: 1)
                )
        }
    }
}
