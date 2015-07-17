//
//  launchViewController.swift
//  Thesaurus
//
//  Created by James  on 7/16/15.
//  Copyright (c) 2015 James . All rights reserved.
//

import UIKit

class launchViewController: UIViewController {
    @IBOutlet weak var logo1: UIImageView!
    @IBOutlet weak var logo2: UIImageView!
    @IBOutlet weak var logo3: UIImageView!
    @IBOutlet weak var logo4: UIImageView!
    @IBOutlet weak var logo5: UIImageView!
    @IBOutlet weak var logo6: UIImageView!
    @IBOutlet weak var logo7: UIImageView!
    @IBOutlet weak var logo8: UIImageView!
    @IBOutlet weak var logo9: UIImageView!
    @IBOutlet weak var logoRemainder: UIImageView!
    
    var duration: NSTimeInterval! = 1

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        logo1.alpha = 0
        logo2.alpha = 0
        logo3.alpha = 0
        logo4.alpha = 0
        logo6.alpha = 0
        logo7.alpha = 0
        logo8.alpha = 0
        logo9.alpha = 0
        logoRemainder.alpha = 0
        
        logo5.frame.origin.x = logo5.frame.origin.x - 200
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
        
        
        
        UIView.animateWithDuration(1.7, delay: 0, usingSpringWithDamping: 0.9, initialSpringVelocity: 1, options: nil, animations: { () -> Void in
              self.logo5.frame.origin.x = self.logo5.frame.origin.x + 200
        }) { (Bool) -> Void in
        }
        
        delay(1.2) {
            UIView.animateWithDuration(self.duration, delay: 0, options: .CurveLinear, animations: { () -> Void in
                self.logo1.alpha = 1
                }, completion: nil)
            UIView.animateWithDuration(self.duration, delay: 0.05, options: .CurveLinear, animations: { () -> Void in
                self.logo2.alpha = 1
                }, completion: nil)
            UIView.animateWithDuration(self.duration, delay: 0.1, options: .CurveLinear, animations: { () -> Void in
                self.logo3.alpha = 1
                }, completion: nil)
            UIView.animateWithDuration(self.duration, delay: 0.15, options: .CurveLinear, animations: { () -> Void in
                self.logo4.alpha = 1
                }, completion: nil)
            UIView.animateWithDuration(self.duration, delay: 0.2, options: .CurveLinear, animations: { () -> Void in
                self.logo6.alpha = 1
                }, completion: nil)
            UIView.animateWithDuration(self.duration, delay: 0.25, options: .CurveLinear, animations: { () -> Void in
                self.logo7.alpha = 1
                }, completion: nil)
            UIView.animateWithDuration(self.duration, delay: 0.3, options: .CurveLinear, animations: { () -> Void in
                self.logo8.alpha = 1
                }, completion: nil)
            UIView.animateWithDuration(self.duration, delay: 0.35, options: .CurveLinear, animations: { () -> Void in
                self.logo9.alpha = 1
                }, completion: nil)
            UIView.animateWithDuration(0.5, delay: 0.55, options: .CurveLinear, animations: { () -> Void in
                self.logoRemainder.alpha = 1
                }, completion: nil)
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func delay(delay:Double, closure:()->()) {
        dispatch_after(
            dispatch_time(
                DISPATCH_TIME_NOW,
                Int64(delay * Double(NSEC_PER_SEC))
            ),
            dispatch_get_main_queue(), closure)
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
