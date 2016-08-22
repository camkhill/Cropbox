//
//  ExistingUserSignInViewController.swift
//  Cropbox
//
//  Created by Hill, Cameron on 8/18/16.
//  Copyright © 2016 Hill, Cameron. All rights reserved.
//

import UIKit

class ExistingUserSignInViewController: UIViewController {

    @IBOutlet weak var signInButton: UIButton!
    @IBOutlet weak var sign_in2: UIImageView!
    @IBOutlet weak var welcomeButton: UIButton!
    @IBOutlet weak var havingTroubleButton: UIButton!
    
    @IBOutlet weak var havingTroubleView: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        signInButton.enabled = false
        sign_in2.hidden = true
        
        havingTroubleView.hidden = true
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onTapWelcome(sender: AnyObject) {
        
        navigationController!.popViewControllerAnimated(true)
    }

    //delete?
    @IBAction func onTapAnywhere(sender: AnyObject) {
        sign_in2.hidden = false
        signInButton.enabled = true
        
    }
    
    
    @IBAction func onTapHavingTrouble(sender: AnyObject) {
        
        havingTroubleView.hidden = false
 
    }
 
    
    @IBAction func onTapOutsideHelp(sender: AnyObject) {
        havingTroubleView.hidden = true
        
    }
    
    @IBAction func onTapAnywhereElse(sender: AnyObject) {
        
        sign_in2.hidden = false
        signInButton.enabled = true
    }

}
