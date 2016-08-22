//
//  CreateAccountViewController.swift
//  Cropbox
//
//  Created by Hill, Cameron on 8/17/16.
//  Copyright © 2016 Hill, Cameron. All rights reserved.
//

import UIKit

class CreateAccountViewController: UIViewController {

    //Images
    @IBOutlet weak var create_account_img: UIImageView!
    @IBOutlet weak var create1_img: UIImageView!
    @IBOutlet weak var create2: UIImageView!
    @IBOutlet weak var create3: UIImageView!
    @IBOutlet weak var create4: UIImageView!
    @IBOutlet weak var create5: UIImageView!
    
    //Buttons
    @IBOutlet weak var tapThroughButton: UIButton!
    @IBOutlet weak var welcomeButton: UIButton!
    @IBOutlet weak var agreeButton: UIButton!
    @IBOutlet weak var viewTermsButton: UIButton!
    @IBOutlet weak var tapOutsideTermsButton: UIButton!
    @IBOutlet weak var createButton: UIButton!
    
    //Initially Agree and View Terms buttons are disabled
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        agreeButton.enabled = false
        viewTermsButton.enabled = false
        tapOutsideTermsButton.enabled = false
        createButton.enabled = false
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onWelcomeButtonTouch(sender: AnyObject) {
        
        navigationController!.popViewControllerAnimated(true)
    }
    
    //As user taps through, display the different images
    var _createTaps = 0
    @IBAction func onTapInView(sender: AnyObject) {
        
        _createTaps += 1
        if (_createTaps == 1){
            create_account_img.hidden = true
            createButton.enabled = true
        } else if (_createTaps == 2){
            create1_img.hidden = true
        } else if (_createTaps == 3){
            create2.hidden = true
        } else if (_createTaps == 4){
            create3.hidden = true
        } else if (_createTaps == 5){
            create4.hidden = true
            
            //Activate View Terms and Agree buttons
            agreeButton.enabled = true
            viewTermsButton.enabled = true
            tapOutsideTermsButton.enabled = true
            
            //Disable Create and Welcome button
            welcomeButton.enabled = false
            createButton.enabled = false
        }
    }
    
    @IBAction func onTapViewTerms(sender: AnyObject) {
        //Dummy - need this for some reason...
    }
   
    
    @IBAction func onTapOutsideTerms(sender: AnyObject) {
        create4.hidden = false
        _createTaps -= 1
        agreeButton.enabled = false
        viewTermsButton.enabled = false
        tapOutsideTermsButton.enabled = false
        
        welcomeButton.enabled = true
        createButton.enabled = true
        
    }
    
    
    @IBAction func onTapCreate(sender: AnyObject) {
        //Hide all other images, go to terms of use
        _createTaps = 5
        create4.hidden = true
        create3.hidden = true
        create2.hidden = true
        create1_img.hidden = true
        create_account_img.hidden = true
        
        agreeButton.enabled = true
        viewTermsButton.enabled = true
        tapOutsideTermsButton.enabled = true
    }
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
