//
//  ListView.swift
//  ToDo-App
//
//  Created by Александр Ермаков on 13.05.2022.
//

import Foundation
import UIKit

class ListView: UIView, UITableViewDelegate, UITableViewDataSource {
    
    // MARK: -
    // MARK: IBActions
    
    @IBAction func addButtonPressed(_ sender: UIBarButtonItem) {
        self.controller?.addTask()
    }
    
    // MARK: -
    // MARK: IBOutlets
    
    @IBOutlet var navigationBar: UINavigationBar?
    @IBOutlet var tableView: UITableView?
    
    // MARK: -
    // MARK: Public variables
    
    var controller: ViewController?
    
    // MARK: -
    // MARK: Public functions
    
    func prepare(with controller: ViewController) {
        self.controller = controller
        self.backgroundColor = .systemGray3
    }
    
    // MARK: -
    // MARK: UITableViewDataSource, UITableViewDelegate
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        guard let controller = self.controller else { return 0 }
        return controller.list.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: nil)
        cell.textLabel?.text = self.controller?.list[indexPath.row]
        return cell
    }
}
