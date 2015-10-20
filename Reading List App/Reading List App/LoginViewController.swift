//
//  LogInViewController.swift
//  Reading List App
//
//  Created by Alexander Batalov on 10/8/15.
//  Copyright © 2015 ios-developers.io. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func loginButtonPressed() {
        PFTwitterUtils.logInWithBlock {
            (user: PFUser?, error: NSError?) -> Void in
            if let _ = user {
                self.dismissViewControllerAnimated(true, completion: nil)
            } else {
                print("Uh oh. The user cancelled the Twitter login.")
            }
        }
    }
}