//
//  DatePickerView.swift
//  MitraApps
//
//  Created by Faiz Azhari Mursid on 31/12/23.
//

import SwiftUI

struct DatePickerView: View {
    @State private var date = Date()
    let label: String
    
    private var formattedDate: String {
        let formatter = DateFormatter()
        formatter.dateFormat = "dd/MM/yyyy"
        return formatter.string(from: date)
    }
    
    @State private var isDatePickerVisible = false
    
    var body: some View {
        ZStack {
            VStack(alignment: .leading) {
                Text(label)
                        .font(
                            Font.custom("Inter", size: 14)
                                .weight(.bold)
                        )
                        .multilineTextAlignment(.leading)
                
                HStack {
                    Text("\(formattedDate)")
                        .font(.caption)
                        
                    Spacer()
                    
                    Image(systemName: "calendar")
                        .font(.title3)
                        .foregroundColor(.blue)
                        .onTapGesture {
                            isDatePickerVisible.toggle()
                        }
                }
                .padding()
                .frame(maxWidth: .infinity, alignment: .topLeading)
                .overlay(
                    RoundedRectangle(cornerRadius: 6)
                        .stroke(Color(red: 0.71, green: 0.71, blue: 0.71), lineWidth: 1)
                )
            }
            .overlay(
                isDatePickerVisible ?
                    DatePicker(
                        "",
                        selection: $date,
                        displayedComponents: .date
                    )
                    .datePickerStyle(WheelDatePickerStyle())
                    .labelsHidden()
                    .padding()
                    .background(.white)
                    .onTapGesture {
                        isDatePickerVisible.toggle()
                    }
                    : nil
            )
        }
    }
}

#Preview {
    DatePickerView(label: "Tanggal Mulai Sewa")
}
