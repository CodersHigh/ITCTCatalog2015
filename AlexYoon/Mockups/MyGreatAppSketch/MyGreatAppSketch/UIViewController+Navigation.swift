//
//  UIViewController+Navigation.swift
//  PilotPlantSwift
//
//  Created by lingostar on 2014. 10. 28..
//  Copyright (c) 2014년 lingostar. All rights reserved.
//

import UIKit
import ObjectiveC

private var backButtonHidden : Bool = false
private var tapKBDismiss : Bool = false


public extension UIViewController {
    
    @IBAction func modalDismiss(sender : AnyObject){
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    @IBAction func modalDismissPush(sender : AnyObject){
        var destVC : UIViewController! = nil
        //var tempVC : UIViewController! = nil
        if let presentingVC = self.presentingViewController as? UITabBarController {
            if let tempVC = presentingVC.selectedViewController as? UINavigationController {
                destVC = tempVC.topViewController
            } else {
                destVC = self.presentingViewController
            }
        } else if let presentingVC = self.presentingViewController as? UINavigationController {
            destVC = presentingVC.topViewController
        } else {
            destVC = self.presentingViewController
        }
        
        destVC.performSegueWithIdentifier("ModalDismissPush", sender: nil)
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    
    
    @IBAction func navigationBack(sender : AnyObject){
        if let navigationCongtroller = self.navigationController {
            navigationController?.popViewControllerAnimated(true)
        }
    }
    
    @IBAction func navigationBackToRoot(sender : AnyObject){
        if let navigationCongtroller = self.navigationController {
            navigationController?.popToRootViewControllerAnimated(true)
        }
    }
    
    @IBAction func keyboardDismiss(sender: AnyObject) {
        for view in self.view.subviews {
            view.resignFirstResponder()
        }
    }
    
    @IBAction func openPhotoLibrary(sender: AnyObject) {
        
        let imagePickerController = UIImagePickerController()
        //imagePickerController.delegate = sender
        imagePickerController.sourceType = UIImagePickerControllerSourceType.SavedPhotosAlbum
        imagePickerController.allowsEditing = true
        self.presentViewController(imagePickerController, animated: true, completion: { imageP in
            
        })
    }
    
    @IBInspectable var backHidden : Bool {
        get {
            return self.navigationItem.hidesBackButton
        }
        set (newValue){
            //backButtonHidden = newValue
            self.navigationItem.hidesBackButton = newValue
        }
    }
    
    /*
    @IBInspectable var keyboardDismiss : Bool {
        get {
            return objc_getAssociatedObject(self, &tapKBDismiss) as Bool!
        }
        set (newValue){
            objc_setAssociatedObject(self, &tapKBDismiss, newValue, UInt(OBJC_ASSOCIATION_RETAIN))
        }
        
    }
    
    public override func touchesEnded(touches: NSSet, withEvent event: UIEvent) {
        super.touchesEnded(touches, withEvent: event)
        if self.keyboardDismiss {
            for view in self.view.subviews {
                view.resignFirstResponder()
            }
        }
    }*/
    
    func viewSize() -> CGSize {
        return self.view.bounds.size
    }
}

