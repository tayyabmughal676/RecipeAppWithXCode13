//
//  RecipeCategoryListViewModel.swift
//  Recipe App
//
//  Created by Thor on 28/09/2021.
//

import Foundation

@MainActor
class RecipeCategoryListViewModel: ObservableObject{
    
    @Published var recipeCategories: [RecipeCategoryViewModel] = []
    
    @available(iOS 15.0.0, *)
    func populateCategories() async{
        
        do{
            
            let recipeCategoryResponse = try await Webservice().get(url: Contants.Urls.recipeCategoriesURL) { Data in
                return try? JSONDecoder().decode(RecipeCategoryResponse.self, from: Data)
            }
            
            self.recipeCategories = recipeCategoryResponse.categories.map(RecipeCategoryViewModel.init)
            
        }catch{
            print(error)
        }
        
    }
}


struct RecipeCategoryViewModel: Identifiable{
    let id = UUID()
    private let recipeCategory: RecipeCategory
    
    init(_ recipeCategory: RecipeCategory){
        self.recipeCategory = recipeCategory
    }
    
    var title:String{
        recipeCategory.title
    }
    
    var imageUrl: URL?{
        URL(string: recipeCategory.imageUrl )
    }
    
}

