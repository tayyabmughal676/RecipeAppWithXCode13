//
//  Recipe_AppApp.swift
//  Recipe App
//
//  Created by Thor on 28/09/2021.
//

import SwiftUI

@main
struct Recipe_AppApp: App {
    var body: some Scene {
        WindowGroup {
            if #available(iOS 15.0.0, *) {
                RecipeCategoryListScreen()
            } else {
                // Fallback on earlier versions
            }
        }
    }
}
