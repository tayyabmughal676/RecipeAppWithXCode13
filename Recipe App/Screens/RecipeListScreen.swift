//
//  RecipeListScreen.swift
//  Recipe App
//
//  Created by Thor on 28/09/2021.
//

import SwiftUI

struct RecipeListScreen: View {
    
    let recipeCategory: RecipeCategoryViewModel
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct RecipeListScreen_Previews: PreviewProvider {
    static var previews: some View {
        let recipeCategoryVM = RecipeCategoryViewModel(RecipeCategory(imageUrl: "https://res.cloudinary.com/dk4ocuiwa/image/upload/v1618257399/RecipesApi/Chicken.png", title: "Chicken"))
        RecipeListScreen(recipeCategory: recipeCategoryVM)
    }
}
