//
//  AjukanBisnisTambahKeranjangController.swift
//  MitraApps
//
//  Created by Faiz Azhari Mursid on 28/12/23.
//

import Foundation

class AjukanBisnisTambahKeranjangController: ObservableObject {
    @Published var ajukanBisnisShow: Bool = false
    
    func isShow(ajukanBisnisShow: Bool = false) {
        self.ajukanBisnisShow = ajukanBisnisShow
    }
}
