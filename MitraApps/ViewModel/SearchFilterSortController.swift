//
//  SearchFilterSortController.swift
//  MitraApps
//
//  Created by Faiz Azhari Mursid on 18/12/23.
//

import Foundation

class SearchFilterSortController: ObservableObject {
    @Published var searchShow: Bool = false
    @Published var sortShow: Bool = false
    @Published var filterShow: Bool = false
    
    func hideAllViews() {
        searchShow = false
        sortShow = false
        filterShow = false
    }
    
    func hideAllViewsExcept(searchShow: Bool = false, sortShow: Bool = false, filterShow: Bool = false) {
        hideAllViews()
        self.searchShow = searchShow
        self.sortShow = sortShow
        self.filterShow = filterShow
    }
    
    func hideFilter() {
        filterShow = false
    }
    func hideSearch() {
        searchShow = false
    }
    func hideSort() {
        sortShow = false
    }
}
