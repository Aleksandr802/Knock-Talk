//
//  AppDelegate.swift
//  Knock-Talk
//
//  Created by Aleksandr Seminov on 21/01/2021.
//  Copyright © 2021 Aleksandr802. All rights reserved.
//

import UIKit
import CLTypingLabel

class WelcomeViewController: UIViewController {
    
    @IBOutlet weak var titleLabel: CLTypingLabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        titleLabel.text = "✏️ KnockTalk"
 /*
        var charIndex = 0.0
        let titleText = "✏️ KnockTalk"
        for letter in titleText {
            print("-")
            print(0.1 * charIndex)
            print(letter)
            Timer.scheduledTimer(withTimeInterval: 0.1 * charIndex, repeats: false) { (timer) in
                self.titleLabel.text?.append(letter)
            }
            charIndex += 1
        }
*/
    }

}
