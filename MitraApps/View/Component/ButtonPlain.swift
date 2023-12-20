//
//  ButtonPlain.swift
//  MitraApps
//
//  Created by Faiz Azhari Mursid on 23/12/23.
//

import SwiftUI

struct ButtonPlain: View {
    let val: String
    
    var body: some View {
        HStack(alignment: .center, spacing: 8) {
            Text(val)
              .font(
                Font.custom("Inter", size: 16)
                  .weight(.semibold)
              )
          .foregroundColor(Color(red: 0.07, green: 0.2, blue: 0.47))
        }
        .padding(16)
        .frame(maxWidth: .infinity, alignment: .center)
        .cornerRadius(6)
        .overlay(
          RoundedRectangle(cornerRadius: 6)
            .inset(by: 0.5)
            .stroke(Color(red: 0.07, green: 0.2, blue: 0.47), lineWidth: 1)
        )
    }
}

#Preview {
    ButtonPlain(val: "Batalkan")
}
