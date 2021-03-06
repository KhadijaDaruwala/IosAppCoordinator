//
//  ProfileViewController.swift
//  AppCoordinatorDemo
//
//  Created by Khadija's Macbook Pro on 10/12/20.
//

import UIKit

class ProfileViewController: UIViewController, ControllerInstance {

    weak var coordinator: ProfileCoordinator?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        coordinator?.didFinishBuying()
    }

}
