//
//  ViewController.swift
//  Emojional
//
//  Created by Kaitlyn VanHook on 5/12/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func showMessage(sender: UIButton) {
        let messageControl = UIAlertController(title: "This is a test", message: "If you see this, it works!", preferredStyle: UIAlertController.Style.alert)
        
        messageControl.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        
        present(messageControl, animated: true, completion: nil)
    }


}

