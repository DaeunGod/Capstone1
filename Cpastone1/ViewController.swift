//
//  ViewController.swift
//  Cpastone1
//
//  Created by 최대운 on 2018. 3. 23..
//  Copyright © 2018년 DaeunGod. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let messageArray = ["May the force be with you", "Live long and prosper", "To inifinity and beyond", "Space is big. You just won't believe how vastly, hugely, mindbogglinly big it is", 10] as [Any]
    var index = 0
    
    @IBOutlet weak var messageLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        messageLabel.text = messageArray[index] as? String
        messageLabel.adjustsFontSizeToFitWidth = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func buttonPress(_ sender: UIButton) {
        
        index = (index+1)%(messageArray.count)
        
        if let nextString = messageArray[index] as? String {
            messageLabel.text = nextString
        }
               
    }
    
}

