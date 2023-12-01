//
//  WelcomeViewController.swift
//  Flash Chat iOS13
//
//  Created by Angela Yu on 21/10/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    @IBOutlet weak var titleLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titleLabel.text = ""
        var charIdex = 0.0
        let titleText = "⚔️ ValhallaChat ⚔️"
        for leter in titleText {
            Timer.scheduledTimer(withTimeInterval: 0.1 * Double(charIdex) , repeats: false) { (timer) in
                
                self.titleLabel.text?.append(leter)
            }
            charIdex += 1
        }
        
        
    }
}
