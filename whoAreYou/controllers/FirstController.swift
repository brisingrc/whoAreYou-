//
//  ViewController.swift
//  whoAreYou
//
//  Created by Мак on 5/12/19.
//  Copyright © 2019 Aidar Zhussupov. All rights reserved.
//

import UIKit

class FirstController: UIViewController {

    @IBOutlet weak var startButton: UIButton!
    
    @IBAction func unwind(segue: UIStoryboardSegue) {
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        startButton.layer.cornerRadius = 15
    }


}

