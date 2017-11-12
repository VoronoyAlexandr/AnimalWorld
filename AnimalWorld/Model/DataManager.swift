//
//  DataManager.swift
//  AnimalWorld
//
//  Created by Alexandr Voronoy on 12.11.2017.
//  Copyright © 2017 Alexandr Voronoy. All rights reserved.
//

import Foundation

final class DataManager {
    static let instance = DataManager()
    private init() {
        
        self.generateCategories()
    }
    private (set) var categories: [Category] = []
    
    // Mark: - Private methods
    private func generateCategories() {
        
        categories.append(Category(name: "Birds", image: #imageLiteral(resourceName: "birds")))
        categories.append(Category(name: "Fish", image: #imageLiteral(resourceName: "fish")))
        categories.append(Category(name: "Insects", image: #imageLiteral(resourceName: "insects")))
        categories.append(Category(name: "Animals", image: #imageLiteral(resourceName: "animals")))
    }
}
