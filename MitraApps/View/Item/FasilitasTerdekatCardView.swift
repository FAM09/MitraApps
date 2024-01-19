//
//  FasilitasTerdekatCardView.swift
//  MitraApps
//
//  Created by Faiz Azhari Mursid on 28/12/23.
//

import SwiftUI

struct FasilitasTerdekatCardView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 4.0) {
            HStack(alignment: .top) {
                Image(systemName: "fork.knife.circle")
                    .resizable()
                    .scaledToFit()
                
                Spacer()
            }
            .padding([.top, .leading], 4.0)
            .frame(height: 32)
            
            Text("Lokasi")
                .font(.headline)
              
              .foregroundColor(Color(red: 0.09, green: 0.09, blue: 0.1))
              .padding(.leading, 8.0)
            
            Text("Bogor, Jakarta Barat")
                .font(.footnote)
                .fontWeight(.light)
                .foregroundColor(Color(red: 0.09, green: 0.09, blue: 0.1))
              .padding(.leading, 8.0)
            
            Spacer()
        }
        .padding(.all, 8.0)
        .background(.white)
        .frame(width: 165, height: 100)
        .cornerRadius(10)
        .overlay(
            RoundedRectangle(cornerRadius: 4)
                .inset(by: 0.5)
                .stroke(Color(red: 0.86, green: 0.88, blue: 0.89), lineWidth: 1)
            
        )
    }
}

#Preview {
    FasilitasTerdekatCardView()
}
