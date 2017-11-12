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
        self.generateBirds()
    }
    private (set) var categories: [Category] = []
    private (set) var animalStorage: [Category: [Animal]] = [:]
    
    // MARK: - Private methods
    private func generateCategories() {
        
        categories.append(Category(name: "Birds", image: #imageLiteral(resourceName: "birds")))
        categories.append(Category(name: "Fish", image: #imageLiteral(resourceName: "fish")))
        categories.append(Category(name: "Insects", image: #imageLiteral(resourceName: "insects")))
        categories.append(Category(name: "Animals", image: #imageLiteral(resourceName: "animals")))
    }
    
    private func generateBirds () {
        guard let category = getCategory(byName: "Birds") else { return }
        let bird1 = Animal(category: category, title: "Pinguin", description: "Very funny bird", image: #imageLiteral(resourceName: "pinguin") )
        let bird2 = Animal(category: category, title: "Kiwi", description: "Very fast bird", image: #imageLiteral(resourceName: "kiwi") )
        let bird3 = Animal(category: category, title: "Parrot", description: "Color bird")
        animalStorage[category] = [bird1, bird2, bird3]
    }
    
    private func getCategory(byName name: String) -> Category? {
        var categoryByName: Category?
        for category in categories {
            if category.name == name {
                categoryByName = category
                break
            }
        }
        return categoryByName
    }
}
