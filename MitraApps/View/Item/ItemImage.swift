//
//  ItemImage.swift
//  MitraApps
//
//  Created by Faiz Azhari Mursid on 28/12/23.
//

import SwiftUI

struct ItemImage: View {
    var body: some View {
        Image("rumah").resizable()
            .aspectRatio(3 / 2, contentMode: .fit)
    }
}

#Preview {
    ItemImage()
}
