//
//  RecipeCategoryCellView.swift
//  Recipe App
//
//  Created by Thor on 28/09/2021.
//

import SwiftUI

struct RecipeCategoryCellView: View {
    
    let recipeCategory: RecipeCategoryViewModel
    
    
    var body: some View {
        HStack(spacing:20){
            if #available(iOS 15.0, *) {
                AsyncImage(url: recipeCategory.imageUrl){image in
                    image
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(maxWidth: 100, maxHeight:100)
                        .clipShape(RoundedRectangle(cornerRadius: 10, style: .continuous))
                } placeholder: {
                    ProgressView()
                }
            } else {
                // Fallback on earlier versions
            }
            
            Text(recipeCategory.title)
        }
    }
}

//struct RecipeCategoryCellView_Previews: PreviewProvider {
//    static var previews: some View {
//        RecipeCategoryCellView()
//    }
//}
