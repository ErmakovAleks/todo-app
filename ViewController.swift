//
//  ViewController.swift
//  ToDo-App
//
//  Created by Александр Ермаков on 13.05.2022.
//

import UIKit

class ViewController: UIViewController, RootViewGettable {
    
    typealias RootView = ListView
    
    public var list: [String] = ["John", "Paul", "George", "Ringo"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view().prepare(with: self)
    }
}
