//
//  Copyright.swift
//  MitraApps
//
//  Created by Faiz Azhari Mursid on 23/12/23.
//

import SwiftUI

struct Copyright: View {
    let val: String
    
    var body: some View {
        VStack(alignment: .center, spacing: 16) {
            Text("Copyright © " + val)
                .font(
                    Font.custom("Inter", size: 14)
                        .weight(.bold)
                )
                .foregroundColor(Color(red: 0.09, green: 0.09, blue: 0.1))
        }
        .frame(maxWidth: .infinity, alignment: .center)
    }
}

#Preview {
    Copyright(val: "KAI")
}
