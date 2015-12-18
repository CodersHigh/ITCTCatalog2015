//
//  ViewController.swift
//  HandPlotter
//
//  Created by itct05 on 2015. 12. 16..
//
//

import UIKit

class ViewController: UIViewController {
  
    @IBOutlet weak var map0: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
      
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
 
    @IBAction func sea(sender: AnyObject) {
        UIView.animateWithDuration(0.5, animations:{
            self.map0.center = CGPointMake(0, 350)
            }
        )

    
    }
}
