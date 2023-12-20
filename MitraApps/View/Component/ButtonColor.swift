//
//  ButtonColor.swift
//  MitraApps
//
//  Created by Faiz Azhari Mursid on 23/12/23.
//

import SwiftUI

struct ButtonColor: View {
    let label: String
    
    var body: some View {
        HStack(alignment: .center, spacing: 8) {
            Text(label)
                .font(
                    Font.custom("Inter", size: 16)
                        .weight(.semibold)
                )
                .foregroundColor(.white)
        }
        .padding(16)
        .frame(maxWidth: .infinity, alignment: .center)
        .background(Color(red: 0.07, green: 0.2, blue: 0.47))
        .cornerRadius(6)
    }
}

#Preview {
    ButtonColor(label: "Login")
}
