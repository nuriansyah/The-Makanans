//
//  DetailView.swift
//  TheMakanans
//
//  Created by Nuriansyah Malik on 14/08/22.
//

import SwiftUI

struct DetailView: View {
    @State var category: Category
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct DetailView_Previews: PreviewProvider {
    @State var category: Category
    
    static var previews: some View {
        DetailView(category: Category(id: "String", strCategory: "String", strCategoryThumb: "String", strCategoryDescription: "String"))
    }
}
