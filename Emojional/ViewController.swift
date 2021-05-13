//
//  ViewController.swift
//  Emojional
//
//  Created by Kaitlyn VanHook on 5/12/21.
//

import UIKit

class ViewController: UIViewController {
    
    let availableEmotions = ["🥳": "Don't be moody. Shake your booty!", "🙂": "When you focus on the good, the good gets better.", "😞": "I am worthy of the time it takes to do the things that heal my heart."]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func showMessage(sender: UIButton) {
        if let selectedEmotion = sender.titleLabel?.text {
            
            let titleText = selectedEmotion
            
            let messageText = availableEmotions[selectedEmotion]!
        
            let messageControl = UIAlertController(title: "\(titleText)", message: "\(messageText)", preferredStyle: UIAlertController.Style.alert)
        
            messageControl.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        
            present(messageControl, animated: true, completion: nil)
            }
    }

}

