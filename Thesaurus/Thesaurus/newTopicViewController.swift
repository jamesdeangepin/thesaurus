//
//  newTopicViewController.swift
//  Thesaurus
//
//  Created by James  on 7/14/15.
//  Copyright (c) 2015 James . All rights reserved.
//

import UIKit

class newTopicViewController: UIViewController {

    @IBOutlet weak var peopleWhoLike: UILabel!
    @IBOutlet weak var alsoLike: UILabel!
    @IBOutlet weak var topicHeader: UILabel!
    @IBOutlet weak var preview: UIView!
    @IBOutlet weak var topicScroll: UIScrollView!
    
    @IBOutlet weak var topic1: UILabel!
    @IBOutlet weak var topic2: UILabel!
    @IBOutlet weak var topic3: UILabel!
    @IBOutlet weak var topic4: UILabel!
    @IBOutlet weak var topic5: UILabel!
    @IBOutlet weak var topic6: UILabel!
    @IBOutlet weak var topic7: UILabel!
    @IBOutlet weak var topic8: UILabel!
    @IBOutlet weak var topic9: UILabel!
    
    @IBOutlet weak var topic10: UILabel!
    @IBOutlet weak var topic11: UILabel!
    @IBOutlet weak var topic12: UILabel!
    @IBOutlet weak var topic13: UILabel!
    @IBOutlet weak var topic14: UILabel!
    @IBOutlet weak var topic15: UILabel!
    @IBOutlet weak var topic16: UILabel!
    @IBOutlet weak var topic17: UILabel!
    @IBOutlet weak var topic18: UILabel!
    
    
    var duration: NSTimeInterval! = 0.6
    var damping: CGFloat! = 1
    var spring: CGFloat! = 5
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        alsoLike.frame.origin.y = alsoLike.frame.origin.y + 50
        topic1.frame.origin.y = topic1.frame.origin.y + 50
        topic2.frame.origin.y = topic2.frame.origin.y + 50
        topic3.frame.origin.y = topic3.frame.origin.y + 50
        topic4.frame.origin.y = topic4.frame.origin.y + 50
        topic5.frame.origin.y = topic5.frame.origin.y + 50
        topic6.frame.origin.y = topic6.frame.origin.y + 50
        topic7.frame.origin.y = topic7.frame.origin.y + 50
        topic8.frame.origin.y = topic8.frame.origin.y + 50
        topic9.frame.origin.y = topic9.frame.origin.y + 50
        
        topic1.alpha = 0
        topic2.alpha = 0
        topic3.alpha = 0
        topic4.alpha = 0
        topic5.alpha = 0
        topic6.alpha = 0
        topic7.alpha = 0
        topic8.alpha = 0
        topic9.alpha = 0
        
        preview.frame.origin.x = preview.frame.origin.x + 375
        
        topicHeader.alpha = 0
        peopleWhoLike.alpha = 0
        alsoLike.alpha = 0
        preview.alpha = 0
        
        topicScroll.contentSize = CGSize(width: 375, height: 383)
        
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
        topicLoad()
        
        delay(0.5) {
            self.listLoad()
            self.listFade()
        }
        
    }
    
    func topicLoad() {
        UIView.animateWithDuration(0.5, delay: 0, options: .CurveEaseInOut, animations: { () -> Void in
            self.topicHeader.alpha = 1
            }, completion: nil)
        
        UIView.animateWithDuration(0.5, delay: 0.2, options: .CurveEaseInOut, animations: { () -> Void in
            self.peopleWhoLike.alpha = 1
            }, completion: nil)
        
        UIView.animateWithDuration(0.8, delay: 0.2, usingSpringWithDamping: 1, initialSpringVelocity: 8, options: nil, animations: { () -> Void in
            self.preview.alpha = 1
            self.preview.frame.origin.x = self.preview.frame.origin.x - 375
            }, completion: nil)
    }
    
    func listLoad() {
        UIView.animateWithDuration(duration, delay: 0, usingSpringWithDamping: damping, initialSpringVelocity: spring, options: nil, animations: { () -> Void in
            self.alsoLike.frame.origin.y = self.alsoLike.frame.origin.y - 50
            }) { (Bool) -> Void in
                //
        }
        
        UIView.animateWithDuration(duration, delay: 0, usingSpringWithDamping: damping, initialSpringVelocity: spring, options: nil, animations: { () -> Void in
            self.topic1.frame.origin.y = self.topic1.frame.origin.y - 50
            }) { (Bool) -> Void in
                //
        }
        UIView.animateWithDuration(duration, delay: 0.1, usingSpringWithDamping: damping, initialSpringVelocity: spring, options: nil, animations: { () -> Void in
            self.topic2.frame.origin.y = self.topic2.frame.origin.y - 50
            }) { (Bool) -> Void in
                //
        }
        UIView.animateWithDuration(duration, delay: 0.2, usingSpringWithDamping: damping, initialSpringVelocity: spring, options: nil, animations: { () -> Void in
            self.topic3.frame.origin.y = self.topic3.frame.origin.y - 50
            }) { (Bool) -> Void in
                //
        }
        UIView.animateWithDuration(duration, delay: 0.3, usingSpringWithDamping: damping, initialSpringVelocity: spring, options: nil, animations: { () -> Void in
            self.topic4.frame.origin.y = self.topic4.frame.origin.y - 50
            }) { (Bool) -> Void in
                //
        }
        UIView.animateWithDuration(duration, delay: 0.4, usingSpringWithDamping: damping, initialSpringVelocity: spring, options: nil, animations: { () -> Void in
            self.topic5.frame.origin.y = self.topic5.frame.origin.y - 50
            }) { (Bool) -> Void in
                //
        }
        UIView.animateWithDuration(duration, delay: 0.5, usingSpringWithDamping: damping, initialSpringVelocity: spring, options: nil, animations: { () -> Void in
            self.topic6.frame.origin.y = self.topic6.frame.origin.y - 50
            }) { (Bool) -> Void in
                //
        }
        UIView.animateWithDuration(duration, delay: 0.6, usingSpringWithDamping: damping, initialSpringVelocity: spring, options: nil, animations: { () -> Void in
            self.topic7.frame.origin.y = self.topic7.frame.origin.y - 50
            }) { (Bool) -> Void in
                //
        }
        UIView.animateWithDuration(duration, delay: 0.7, usingSpringWithDamping: damping, initialSpringVelocity: spring, options: nil, animations: { () -> Void in
            self.topic8.frame.origin.y = self.topic8.frame.origin.y - 50
            }) { (Bool) -> Void in
                //
        }
        UIView.animateWithDuration(duration, delay: 0.8, usingSpringWithDamping: damping, initialSpringVelocity: spring, options: nil, animations: { () -> Void in
            self.topic9.frame.origin.y = self.topic9.frame.origin.y - 50
            }) { (Bool) -> Void in
                //
        }
    }
    
    func listFade() {
        UIView.animateWithDuration(duration, delay: 0, options: .CurveLinear, animations: { () -> Void in
            self.alsoLike.alpha = 1
            }, completion: nil)
        UIView.animateWithDuration(duration, delay: 0, options: .CurveLinear, animations: { () -> Void in
            self.topic1.alpha = 1
            }, completion: nil)
        UIView.animateWithDuration(duration, delay: 0.1, options: .CurveLinear, animations: { () -> Void in
            self.topic2.alpha = 1
            }, completion: nil)
        UIView.animateWithDuration(duration, delay: 0.2, options: .CurveLinear, animations: { () -> Void in
            self.topic3.alpha = 1
            }, completion: nil)
        UIView.animateWithDuration(duration, delay: 0.3, options: .CurveLinear, animations: { () -> Void in
            self.topic4.alpha = 1
            }, completion: nil)
        UIView.animateWithDuration(duration, delay: 0.4, options: .CurveLinear, animations: { () -> Void in
            self.topic5.alpha = 1
            }, completion: nil)
        UIView.animateWithDuration(duration, delay: 0.5, options: .CurveLinear, animations: { () -> Void in
            self.topic6.alpha = 1
            }, completion: nil)
        UIView.animateWithDuration(duration, delay: 0.6, options: .CurveLinear, animations: { () -> Void in
            self.topic7.alpha = 1
            }, completion: nil)
        UIView.animateWithDuration(duration, delay: 0.7, options: .CurveLinear, animations: { () -> Void in
            self.topic8.alpha = 1
            }, completion: nil)
        UIView.animateWithDuration(duration, delay: 0.8, options: .CurveLinear, animations: { () -> Void in
            self.topic9.alpha = 1
            }, completion: nil)
    }
    
    func delay(delay:Double, closure:()->()) {
        dispatch_after(
            dispatch_time(
                DISPATCH_TIME_NOW,
                Int64(delay * Double(NSEC_PER_SEC))
            ),
            dispatch_get_main_queue(), closure)
    }
    
    @IBAction func didReset(sender: AnyObject) {
        alsoLike.frame.origin.y = alsoLike.frame.origin.y + 50
        topic1.frame.origin.y = topic1.frame.origin.y + 50
        topic2.frame.origin.y = topic2.frame.origin.y + 50
        topic3.frame.origin.y = topic3.frame.origin.y + 50
        topic4.frame.origin.y = topic4.frame.origin.y + 50
        topic5.frame.origin.y = topic5.frame.origin.y + 50
        topic6.frame.origin.y = topic6.frame.origin.y + 50
        topic7.frame.origin.y = topic7.frame.origin.y + 50
        topic8.frame.origin.y = topic8.frame.origin.y + 50
        topic9.frame.origin.y = topic9.frame.origin.y + 50
        
        alsoLike.alpha = 0
        topic1.alpha = 0
        topic2.alpha = 0
        topic3.alpha = 0
        topic4.alpha = 0
        topic5.alpha = 0
        topic6.alpha = 0
        topic7.alpha = 0
        topic8.alpha = 0
        topic9.alpha = 0
        
        
        //        topicHeader.frame.origin.x = topicHeader.frame.origin.x + 30
        //        peopleWhoLike.frame.origin.x = peopleWhoLike.frame.origin.x + 30
        preview.frame.origin.x = preview.frame.origin.x + 375
        
        topicHeader.alpha = 0
        peopleWhoLike.alpha = 0
        alsoLike.alpha = 0
        preview.alpha = 0
        
        topicLoad()
        
        delay(0.8) {
            self.listLoad()
            self.listFade()
        }
    }
    @IBAction func onFeedPress(sender: AnyObject) {
        performSegueWithIdentifier("getFeed", sender: self)
    }
    
    @IBAction func didTapTopic(sender: UITapGestureRecognizer) {
        println("tapped")
        }
    
    @IBAction func didTapBack(sender: UITapGestureRecognizer) {
        navigationController?.popViewControllerAnimated(true)
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
