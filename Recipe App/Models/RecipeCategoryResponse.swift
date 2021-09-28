//
//  RecipeCategoryResponse.swift
//  Recipe App
//
//  Created by Thor on 28/09/2021.
//

import Foundation

struct RecipeCategoryResponse: Decodable {
    let categories: [RecipeCategory]
}

struct RecipeCategory: Decodable{
    let imageUrl: String
    let title: String
}
