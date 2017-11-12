//
//  Category.swift
//  AnimalWorld
//
//  Created by Alexandr Voronoy on 12.11.2017.
//  Copyright © 2017 Alexandr Voronoy. All rights reserved.
//

import UIKit

struct Category {
    private static var objectCounter: Int = 0
    let id: Int
    let name: String
    let image: UIImage
    
    init(name: String, image: UIImage) {
        Category.objectCounter += 1
        self.id = Category.objectCounter
        self.name = name
        self.image = image
        
    }
}

extension Category: Hashable {
    static func == (lhs: Category, rhs: Category) -> Bool {
        return lhs.name == rhs.name
    }
    var hashValue: Int {
        return self.id
    }
}
