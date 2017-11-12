//
//  Animal.swift
//  AnimalWorld
//
//  Created by Alexandr Voronoy on 12.11.2017.
//  Copyright © 2017 Alexandr Voronoy. All rights reserved.
//

import UIKit

struct Animal {
    private static var objectCounter = 0
    let id: Int
    let category: Category
    let title: String
    let description: String
    var image: UIImage?
    
    init(category: Category, title: String, description: String, image: UIImage? = nil) {
        Animal.objectCounter += 1
        self.id = Animal.objectCounter
        self.category = category
        self.title = title
        self.description = description
        self.image = image
    }
}
