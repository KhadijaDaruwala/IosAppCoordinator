//
//  CreateAccountViewController.swift
//  AppCoordinatorDemo
//
//  Created by Khadija's Macbook Pro on 10/12/20.
//

import UIKit

class CreateAccountViewController: UIViewController,ControllerInstance {
    
    @IBOutlet weak var labelAccountType: UILabel!
    weak var coordinator: MainCoordinator?
    var accountType = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        switch accountType {
        case 0:
            labelAccountType.text = "You have a gold subscription"
        case 1:
            labelAccountType.text = "You have a premium subscription"
        default:
            break
        }
    }
}
