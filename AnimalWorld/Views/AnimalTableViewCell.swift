//
//  AnimalTableViewCell.swift
//  AnimalWorld
//
//  Created by Alexandr Voronoy on 12.11.2017.
//  Copyright © 2017 Alexandr Voronoy. All rights reserved.
//

import UIKit

class AnimalTableViewCell: UITableViewCell {

    @IBOutlet private weak var ibImageView: UIImageView!
    @IBOutlet private weak var ibTitle: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
      
    }
    func update(name: String, image: UIImage) {
        ibTitle.text = name
        ibImageView.image = image
    }
}
