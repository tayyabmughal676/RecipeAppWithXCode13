//
//  RecipeCategoryListView.swift
//  Recipe App
//
//  Created by Thor on 28/09/2021.
//

import SwiftUI

struct RecipeCategoryListView: View {
    
    let categories: [RecipeCategoryViewModel]
    
    var body: some View {
        List(categories){ category in
            RecipeCategoryCellView(recipeCategory: category)
        }.listStyle(.plain)
    }
}

//struct RecipeCategoryListView_Previews: PreviewProvider {
//    static var previews: some View {
//        RecipeCategoryListView()
//    }
//}
