//
//  RecipeCategoryListScreen.swift
//  Recipe App
//
//  Created by Thor on 28/09/2021.
//

import SwiftUI

@available(iOS 15.0.0, *)
struct RecipeCategoryListScreen: View {
    
    @StateObject var model: RecipeCategoryListViewModel = RecipeCategoryListViewModel()
    
    
    @available(iOS 15.0.0, *)
    var body: some View {
        NavigationView{
            RecipeCategoryListView(categories: model.recipeCategories)
                .task {
                    await model.populateCategories()
                }
                .navigationTitle("Recipes")
        }
    }
}

@available(iOS 15.0.0, *)
struct RecipeCategoryListScreen_Previews: PreviewProvider {
    @available(iOS 15.0.0, *)
    static var previews: some View {
        RecipeCategoryListScreen()
    }
}
