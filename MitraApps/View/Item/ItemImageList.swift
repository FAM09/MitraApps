//
//  ItemImageList.swift
//  MitraApps
//
//  Created by Faiz Azhari Mursid on 28/12/23.
//

import SwiftUI

struct ItemImageList<Page: View>: View {
    var pages: [Page]
    @State private var currentPage = 0
    
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            PageViewController(pages: pages, currentPage: $currentPage)
            ItemImageListControl(numberOfPages: pages.count, currentPage: $currentPage)
                .frame(width: CGFloat(pages.count * 18))
                .padding(.trailing)
        }
        .aspectRatio(3 / 2, contentMode: .fit)
    }
}

#Preview {
    ItemImageList(pages: [ ItemImage(), ItemImage(), ItemImage(), ItemImage() ])
}
