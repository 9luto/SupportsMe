//
//  LevelOneViewController.swift
//  SupportsMe
//
//  Created by Richard Peralta on 4/30/20.
//  Copyright © 2020 Andrew. All rights reserved.
//

import UIKit

private var buttonIdentifier: Int = -1

class LevelOneViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func detectButtonPress(_ sender: UIButton) {
        buttonIdentifier = sender.tag
    }
    
    
    public func returnIdentifier() -> Int
    {
        return buttonIdentifier
    }

}
