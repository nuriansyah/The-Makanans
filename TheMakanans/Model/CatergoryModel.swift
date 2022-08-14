//
//  CatergoryModel.swift
//  TheMakanans
//
//  Created by Nuriansyah Malik on 14/08/22.
//

import Foundation

struct Categories: Codable{
    var categories: [Category]
}


struct Category: Codable, Identifiable{
    var id: String
    var strCategory: String
    var strCategoryThumb: String
    var strCategoryDescription: String
}
