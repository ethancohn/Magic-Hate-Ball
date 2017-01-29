//
//  ViewController.swift
//  Magic Hate Ball
//
//  Created by Ethan on 1/28/17.
//  Copyright (c) 2017 Ethan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var fortunes = ["I am going to kill you.","Your thoughts and ideas are irrelevant.","Of course not you dumb idiot.","I hate you.","You're going to get cancer.","All your friends and family deserve to die.","You should reconsider your decision to not kill yourself immediately.","If you are contemplating anything other than suicide, YOU'RE WRONG.","Lucky for you, I'd rather end my own life than look at you long enough to end yours.","Anyone who ever loved you was wrong.","You disgust me.","Why would you ever ask a stupid question like that?","Go to hell.","Please die right now.","You are a waste of life on this earth.","There is no reason you deserve to be alive right now."]
    


    @IBOutlet weak var fortunesTextView: UITextView!


    override func canBecomeFirstResponder() -> Bool {
        return true
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func changeLanguage(sender: AnyObject) {
        
        let alertController = UIAlertController(title: "Go Fuck Yourself.", message:
            "", preferredStyle: UIAlertControllerStyle.Alert)
        alertController.addAction(UIAlertAction(title: "Ok I will", style: UIAlertActionStyle.Default,handler: nil))
        
        self.presentViewController(alertController, animated: true, completion: nil)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func motionEnded(motion: UIEventSubtype, withEvent event: UIEvent?){
        if motion == .MotionShake {
             self.fortunesTextView.text = self.fortunes[random() % self.fortunes.count]

        }
    }
    
  }

