//
//  CategoryController.swift
//  TheMakanans
//
//  Created by Nuriansyah Malik on 14/08/22.
//

import Foundation

class CategoryController: ObservableObject {
    @Published var categories: [Category] = []
    
    func getCategory(completion: @escaping ([Category]) -> ()) {
        guard let url = URL(string: "https://www.themealdb.com/api/json/v1/1/categories.php") else {
            print("URL not valid!")
            return
        }
        
        let request = URLRequest(url: url)
        let task = URLSession.shared.dataTask(with: request) { (data, response, error) in
            if let error = error {
                print(error.localizedDescription)
                return
            }
            
            if let data = data {
                do {
                    let categories = try JSONDecoder().decode(Categories.self, from: data)
                    let category = categories.categories
                    print(category)
                    
                    DispatchQueue.main.async {
                        self.categories = category
                    }
                } catch let error {
                    print(error.localizedDescription)
                }
            }
        }
        task.resume()
    }
}
