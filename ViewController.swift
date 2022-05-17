//
//  ViewController.swift
//  ToDo-App
//
//  Created by Александр Ермаков on 13.05.2022.
//

import UIKit

class ViewController: UIViewController, RootViewGettable {
    
    // MARK: -
    // MARK: Associated Types
    
    typealias RootView = ListView
    
    // MARK: -
    // MARK: Public variables
    
    public var list: [String] = ["John", "Paul", "George", "Ringo"]
    
    // MARK: -
    // MARK: Public functions
    
    func addTask() {
        let alert = UIAlertController(title: "New task", message: "new to-do", preferredStyle: .alert)
        let action = UIAlertAction(title: "Add", style: .default) { action in
            if let text = alert.textFields?.first?.text {
                self.list.append(text)
                self.view().tableView?.reloadData()
            }
        }
        alert.addAction(action)
        alert.addTextField { toDoTextField in
            toDoTextField.placeholder = "Enter a to-do"
        }
        self.present(alert, animated: true, completion: nil)
    }
    
    // MARK: -
    // MARK: ViewController Life Cycle

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view().prepare(with: self)
    }
}
