//
//  CategoryAnimalTableViewCell.swift
//  AnimalWorld
//
//  Created by Alexandr Voronoy on 12.11.2017.
//  Copyright © 2017 Alexandr Voronoy. All rights reserved.
//

import UIKit

class CategoryAnimalTableViewCell: UITableViewCell {
    
    @IBOutlet private weak var ibimageView: UIImageView!
    @IBOutlet private weak var ibTitle: UILabel!
    @IBOutlet private weak var ibSubtitle: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.selectionStyle = .none
    }
    
    func update(name: String, image: UIImage, animalsAmount: Int) {
        ibTitle.text = name
        ibimageView.image = image
        
        var animalsAmountString = "\(animalsAmount) animal"
        if animalsAmount != 1 {
            animalsAmountString += "s"
        }
        ibSubtitle.text = animalsAmountString
    }
}
