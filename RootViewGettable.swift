//
//  RootViewGettable.swift
//  ToDo-App
//
//  Created by Александр Ермаков on 13.05.2022.
//

import Foundation
import UIKit

protocol RootViewGettable {
    associatedtype RootView: UIView
}

extension RootViewGettable where Self: UIViewController {
    func view() -> RootView {
        return self.view as! RootView
    }
}
