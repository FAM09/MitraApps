//
//  TestView.swift
//  MitraApps
//
//  Created by Faiz Azhari Mursid on 19/01/24.
//

import SwiftUI

struct TestView: View {
    var body: some View {
            NavigationView {
                List {
                    Text("Chocolate")
                    Text("Vanilla")
                    Text("Strawberry")
                }
                .navigationBarTitle(Text("Today‘s Flavors"))
                .navigationBarItems(leading:
                    HStack {
                        Button("Hours") {
                            print("Hours tapped!")
                        }
                    }, trailing:
                    HStack {
                        Button("Favorites") {
                            print("Favorites tapped!")
                        }


                        Button("Specials") {
                            print("Specials tapped!")
                        }
                    }
                )
            }
        }
}

#Preview {
    TestView()
}
