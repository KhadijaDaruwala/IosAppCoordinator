//
//  BuyViewController.swift
//  AppCoordinatorDemo
//
//  Created by Khadija's Macbook Pro on 10/12/20.
//

import UIKit

class BuyViewController: UIViewController, ControllerInstance {

    weak var coordinator: BuyCoordinator?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func buttonPaymentClicked(_ sender: Any) {
        coordinator?.makePayment()
    }
}
