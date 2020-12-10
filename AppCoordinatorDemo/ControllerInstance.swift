//
//  Storyboarded.swift
//  AppCoordinatorDemo
//
//  Created by Khadija's Macbook Pro on 10/12/20.
//

import Foundation
import UIKit

protocol ControllerInstance {
    static func instantiate() -> Self
}


extension ControllerInstance where Self: UIViewController{
    static func instantiate() -> Self{
        let id = String(describing: self)
        //        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        //        return storyboard.instantiateViewController(identifier: id) as! Self
        return Self(nibName: id, bundle: nil)
    }
}
