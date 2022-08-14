//
//  ContentView.swift
//  TheMakanans
//
//  Created by Nuriansyah Malik on 14/08/22.
//

import SwiftUI

struct ContentView: View {
    @StateObject var fetch = CategoryController()
    var body: some View {
        
            CategoryList()
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        
        ContentView()
        
    }
}


struct CategoryList: View {
    @StateObject var fetch = CategoryController()
    
    var body: some View{
        NavigationView{
            List(fetch.categories) { category in
                NavigationLink(destination: DetailView(category: category)){
                    HStack{
                        Text(category.strCategory)
                        Text("Hallo")
                    }
                }
            }
            .onAppear{
                fetch.getCategory{
                    (categories) in self.fetch.categories = categories
                }
            }
        }
    }
}

