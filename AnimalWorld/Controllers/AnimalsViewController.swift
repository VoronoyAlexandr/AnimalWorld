//
//  AnimalsViewController.swift
//  AnimalWorld
//
//  Created by Alexandr Voronoy on 12.11.2017.
//  Copyright © 2017 Alexandr Voronoy. All rights reserved.
//

import UIKit

class AnimalsViewController: UIViewController {
    
    @IBOutlet private weak var tableView: UITableView!
    private var datasource: [Animal] = []
    var category: Category?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupTableView()
        title = category?.name ?? ""
        setupDatasource()
    }
    // MARK: - Private methods
    private func setupTableView() {
        tableView.delegate = self
        tableView.dataSource = self
    }
    private func setupDatasource() {
        guard let category = category else { return }
        datasource = DataManager.instance.animalStorage[category] ?? []
        tableView.reloadData()
    }
}
extension AnimalsViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return datasource.count
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 160
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "AnimalTableCell") as? AnimalTableViewCell else {
            fatalError("Error: Cell doesn't exist")
        }
        let animal = datasource[indexPath.row]
        let animalImage = animal.image ?? #imageLiteral(resourceName: "placeholder")
        cell.update(name: animal.title, image: animalImage)
        return cell
    }
    
}
