//
//  Recipe.swift
//  Recipe App
//
//  Created by Thor on 28/09/2021.
//

import Foundation


struct RecipeResponse: Decodable{
    let recipes: [Recipe]

}

struct Recipe: Decodable{
    let id: String
    let imageUrl: String
    let title : String
}
