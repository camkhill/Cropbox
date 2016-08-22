//
//  WelcomeViewController.swift
//  Cropbox
//
//  Created by Hill, Cameron on 8/18/16.
//  Copyright © 2016 Hill, Cameron. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController,UIScrollViewDelegate {

    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet weak var welcomeScroller: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        welcomeScroller.contentSize = CGSize(width: 960, height: 568)
        welcomeScroller.delegate = self
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
