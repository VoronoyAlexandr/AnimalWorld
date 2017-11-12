//
//  CategoryAnimalViewController.swift
//  AnimalWorld
//
//  Created by Alexandr Voronoy on 12.11.2017.
//  Copyright © 2017 Alexandr Voronoy. All rights reserved.
//

import UIKit

class CategoryAnimalViewController: UIViewController {
    
    @IBOutlet private weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Categories of Animal"
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    
}

// MARK: - Table view datasource
extension CategoryAnimalViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataManager.instance.categories.count
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "CategoryAnimalCell") as? CategoryAnimalTableViewCell else {
            fatalError("Error: Cell doesn't exist")
        }
        let category = DataManager.instance.categories[indexPath.row]
        cell.update(name: category.name, image: category.image, animalsAmount: 0)
        
        return cell
    }
}
