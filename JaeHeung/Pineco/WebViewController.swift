//
//  WebViewController.swift
//  Pineco
//
//  Created by itct06 on 2015. 12. 15..
//  Copyright © 2015년 itct. All rights reserved.
//

import UIKit

class WebViewController: UIViewController {
    
    let targetURL = NSURL(string: "http://www.nibr.go.kr/species/home/species/spc01001m.jsp?cls_id=3564")
    @IBOutlet weak var webView: UIWebView!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let request = NSURLRequest(URL: self.targetURL!)
        webView.loadRequest(request)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func actionClicked(sender: AnyObject) {
//        guard let button = sender as? UIView else {
//            return
//        }
        let actionSheet = UIAlertController(title: nil, message: nil, preferredStyle: UIAlertControllerStyle.ActionSheet)
//        actionSheet.modalPresentationStyle = .Popover
        let openSafari = UIAlertAction(title: "Safari에서 열기", style: UIAlertActionStyle.Default, handler: {(UIAlertAction) in UIApplication.sharedApplication().openURL(self.targetURL!)})
        let cancel = UIAlertAction(title: "취소", style: UIAlertActionStyle.Cancel, handler: nil)
        actionSheet.addAction(openSafari)
        actionSheet.addAction(cancel)
//        if let presenter = actionSheet.popoverPresentationController {
//            presenter.sourceView = self.viewIfLoaded;
//            presenter.sourceRect = button.bounds;
//        }
        if let popoverController = actionSheet.popoverPresentationController {
            popoverController.barButtonItem = sender as? UIBarButtonItem
        }
        self.presentViewController(actionSheet, animated: true, completion: nil)
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
