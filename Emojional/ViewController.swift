//
//  ViewController.swift
//  Emojional
//
//  Created by Kaitlyn VanHook on 5/12/21.
//

import UIKit

class ViewController: UIViewController {
    
    let availableEmotions = ["🥳": "party", "🙂": "happy", "😞": "sad"]
    
    let customMessages = [
        "party": ["Don't be moody. Shake your booty!", "Well behaved women rarely make history.", "Make your own magic."],
        "happy": ["When you focus on the good, the good gets better.", "Stay close to people who feel like sunshine."],
        "sad": ["I am worthy of the time it takes to do the things that heal my heart.", "And I will keep going.", "Only when we are brave enough to explore the darkness will we discover the infinite power of our light."]
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func showMessage(sender: UIButton) {
        if let selectedEmotion = sender.titleLabel?.text {
            
            let titleText = selectedEmotion
            
            let length = customMessages[availableEmotions[selectedEmotion]!]!.count
            
            let index = Int.random(in: 0..<length)
            
            let selectedMessage = customMessages[availableEmotions[selectedEmotion]!]![index]
        
            let messageControl = UIAlertController(title: "\(titleText)", message: "\(selectedMessage)", preferredStyle: UIAlertController.Style.alert)
        
            messageControl.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        
            present(messageControl, animated: true, completion: nil)
            }
    }

}

