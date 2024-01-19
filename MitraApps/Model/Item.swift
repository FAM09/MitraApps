//
//  Item.swift
//  MitraApps
//
//  Created by Faiz Azhari Mursid on 18/12/23.
//

import Foundation
import SwiftUI

struct Items: Decodable {
    let items: [Item]
}

struct Item: Decodable, Identifiable {
    let title: String
    let description: String
    let area: String
    let location: String
    let luas: String
    let id: String
    
    var image: [Image] {
        [
            Image("rumah"),
            Image("rumah"),
            Image("rumah"),
            Image("rumah"),
            Image("rumah"),
            Image("rumah")
        ]
    }
}
