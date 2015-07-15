//
//  ViewController.swift
//  Thesaurus
//
//  Created by James  on 7/13/15.
//  Copyright (c) 2015 James . All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var peopleWhoLike: UILabel!
    @IBOutlet weak var alsoLike: UILabel!
    @IBOutlet weak var topicHeader: UILabel!
    @IBOutlet weak var preview: UIView!
    @IBOutlet weak var topicScroll: UIScrollView!
    
    @IBOutlet weak var tile1: UIImageView!
    @IBOutlet weak var tile2: UIImageView!
    @IBOutlet weak var tile3: UIImageView!
    @IBOutlet weak var tile4: UIView!
    
    @IBOutlet weak var topic1: UILabel!
    @IBOutlet weak var topic2: UILabel!
    @IBOutlet weak var topic3: UILabel!
    @IBOutlet weak var topic4: UILabel!
    @IBOutlet weak var topic5: UILabel!
    @IBOutlet weak var topic6: UILabel!
    @IBOutlet weak var topic7: UILabel!
    @IBOutlet weak var topic8: UILabel!
    @IBOutlet weak var topic9: UILabel!
    
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
        
        delay(1) {
            self.listLoad()
            self.listFade()
        }
        
    }
    
    func topicLoad() {
        UIView.animateWithDuration(0.5, delay: 0.3, options: .CurveEaseInOut, animations: { () -> Void in
            self.topicHeader.alpha = 1
            }, completion: nil)
        
        UIView.animateWithDuration(0.5, delay: 0.5, options: .CurveEaseInOut, animations: { () -> Void in
            self.peopleWhoLike.alpha = 1
            }, completion: nil)
        
        UIView.animateWithDuration(0.8, delay: 0.5, usingSpringWithDamping: 1, initialSpringVelocity: 8, options: nil, animations: { () -> Void in
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
    
    func listLoadNew() {
        
        self.topic1.frame.origin.y = self.topic1.frame.origin.y + 50
        self.topic2.frame.origin.y = self.topic2.frame.origin.y + 50
        self.topic3.frame.origin.y = self.topic3.frame.origin.y + 50
        self.topic4.frame.origin.y = self.topic4.frame.origin.y + 50
        self.topic5.frame.origin.y = self.topic5.frame.origin.y + 50
        self.topic6.frame.origin.y = self.topic6.frame.origin.y + 50
        self.topic7.frame.origin.y = self.topic7.frame.origin.y + 50
        self.topic8.frame.origin.y = self.topic8.frame.origin.y + 50
        self.topic9.frame.origin.y = self.topic9.frame.origin.y + 50
        
        topic1.textColor = UIColor(red:0.425, green:0.722, blue:0.448, alpha:1)
        topic2.textColor = UIColor(red:0.52, green:0.719, blue:0.286, alpha:1)
        topic3.textColor = UIColor(red:0.428, green:0.394, blue:0.203, alpha:1)
        topic4.textColor = UIColor(red:0.099, green:0.243, blue:0.24, alpha:1)
        topic5.textColor = UIColor(red:0.281, green:0.578, blue:0.521, alpha:1)
        topic6.textColor = UIColor(red:0.379, green:0.224, blue:0.052, alpha:1)
        topic7.textColor = UIColor(red:0.019, green:0.364, blue:0.146, alpha:1)
        topic8.textColor = UIColor(red:0.906, green:0.916, blue:0.319, alpha:1)
        topic9.textColor = UIColor(red:0.605, green:0.692, blue:0.555, alpha:1)
        
        topic1.text = "Abstract Photography"
        topic2.text = "Black and White"
        topic3.text = "Macro Photography"
        topic4.text = "Wildlife"
        topic5.text = "Camera Gear"
        topic6.text = "Photojournalism"
        topic7.text = "Still Life"
        topic8.text = "Photo Art"
        topic9.text = "Street Photography"
        
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

    func listFadeNew() {
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
    
    func listFadeOut() {
        UIView.animateWithDuration(duration, delay: 0, options: .CurveLinear, animations: { () -> Void in
            self.topic1.alpha = 0
            }, completion: nil)
        UIView.animateWithDuration(duration, delay: 0.1, options: .CurveLinear, animations: { () -> Void in
            self.topic2.alpha = 0
            }, completion: nil)
        UIView.animateWithDuration(duration, delay: 0.2, options: .CurveLinear, animations: { () -> Void in
            self.topic3.alpha = 0
            }, completion: nil)
        UIView.animateWithDuration(duration, delay: 0.3, options: .CurveLinear, animations: { () -> Void in
            self.topic4.alpha = 0
            }, completion: nil)
        UIView.animateWithDuration(duration, delay: 0.3, options: .CurveLinear, animations: { () -> Void in
            self.topic5.alpha = 0
            }, completion: nil)
        UIView.animateWithDuration(duration, delay: 0.5, options: .CurveLinear, animations: { () -> Void in
            self.topic6.alpha = 0
            }, completion: nil)
        UIView.animateWithDuration(duration, delay: 0.6, options: .CurveLinear, animations: { () -> Void in
            self.topic7.alpha = 0
            }, completion: nil)
        UIView.animateWithDuration(duration, delay: 0.7, options: .CurveLinear, animations: { () -> Void in
            self.topic8.alpha = 0
            }, completion: nil)
        UIView.animateWithDuration(duration, delay: 0.8, options: .CurveLinear, animations: { () -> Void in
            self.topic9.alpha = 0
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
        // var tappedText = sender.view as! UILabel
        
        // Move and fade out the current topic text
        UIView.animateWithDuration(0.3, delay: 0, options: .CurveEaseInOut, animations: { () -> Void in
            self.topicHeader.frame.origin.x = self.topicHeader.frame.origin.x - 15
            self.topicHeader.alpha = 0
        }) { (Bool) -> Void in
            
            //swap out the header text and color and setup for transition
            self.topicHeader.text = "Photography"
            self.topicHeader.textColor = UIColor(red:0.105, green:0.411, blue:0.356, alpha:1)
            self.topicHeader.frame.origin.x = self.topicHeader.frame.origin.x + 30
            
            // Fade out the preview blocks
            UIView.animateWithDuration(0.5, delay: 0, options: .CurveEaseInOut, animations: { () -> Void in
                self.tile4.alpha = 0
                }) { (Bool) -> Void in
                }
            UIView.animateWithDuration(0.5, delay: 0, options: .CurveEaseInOut, animations: { () -> Void in
                self.tile3.alpha = 0
                }) { (Bool) -> Void in
                    self.tile3.image = UIImage(named: "2_tile3")
                    UIView.animateWithDuration(0.5, delay: 0, options: .CurveEaseInOut, animations: { () -> Void in
                        self.tile3.alpha = 1
                        }, completion: nil)
                }
            UIView.animateWithDuration(0.5, delay: 0.1, options: .CurveEaseInOut, animations: { () -> Void in
                self.tile2.alpha = 0
                }) { (Bool) -> Void in
                    self.tile2.image = UIImage(named: "2_tile2")
                    UIView.animateWithDuration(0.5, delay: 0, options: .CurveEaseInOut, animations: { () -> Void in
                        self.tile2.alpha = 1
                        }, completion: nil)
                }
            UIView.animateWithDuration(0.5, delay: 0.2, options: .CurveEaseInOut, animations: { () -> Void in
                self.tile1.alpha = 0
                }) { (Bool) -> Void in
                    self.tile1.image = UIImage(named: "2_tile1")
                    UIView.animateWithDuration(0.5, delay: 0, options: .CurveEaseInOut, animations: { () -> Void in
                        self.tile1.alpha = 1
                        }, completion: nil)
                }
            
//            //                self.tile4.image = UIImage(named: "2_tile4")
//            self.tile3.image = UIImage(named: "2_tile3")
//            self.tile2.image = UIImage(named: "2_tile2")
//            self.tile1.image = UIImage(named: "2_tile1")
//            
//            UIView.animateWithDuration(0.5, delay: 0, options: .CurveEaseInOut, animations: { () -> Void in
//                self.tile4.alpha = 1
//                }, completion: nil)
//            UIView.animateWithDuration(0.5, delay: 0, options: .CurveEaseInOut, animations: { () -> Void in
//                self.tile2.alpha = 1
//                }, completion: nil)
//            UIView.animateWithDuration(0.5, delay: 0, options: .CurveEaseInOut, animations: { () -> Void in
//                self.tile1.alpha = 1
//                }, completion: nil)

            
            //Animate the new header in
            UIView.animateWithDuration(0.3, delay: 0, options: .CurveEaseInOut, animations: { () -> Void in
                self.topicHeader.frame.origin.x = self.topicHeader.frame.origin.x - 15
                self.topicHeader.alpha = 1
                                
                self.listFadeOut()
            }, completion: { (Bool) -> Void in
                // Remove the old list of topics
                
                // load the new list of topics
                self.delay(0.3) {
                    self.listLoadNew()
                    self.listFadeNew()
                }
            })
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}

