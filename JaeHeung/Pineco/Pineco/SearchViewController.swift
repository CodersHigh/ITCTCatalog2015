//
//  SearchViewController.swift
//  Pineco
//
//  Created by itct06 on 2015. 12. 14..
//  Copyright © 2015년 itct. All rights reserved.
//

import UIKit

class SearchViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet weak var classificationTextField: UITextField!
    @IBOutlet weak var habitatTextField: UITextField!
    @IBOutlet weak var dateStartTextField: UITextField!
    @IBOutlet weak var dateEndTextField: UITextField!
    
    let classificationOptions: [String] = ["--분류--", "식물", "조류", "포유류", "절지류", "양서・파충류", "어류", "균류", "기타"]
    let habitatOptions: [String] = ["--서식지--", "산림", "바다・강・습지", "경작지・들판", "거주지", "인공시설", "기타"]
    var pickerView1: UIPickerView! = UIPickerView()
    var pickerView2: UIPickerView! = UIPickerView()
    var datePicker1: UIDatePicker! = UIDatePicker()
    var datePicker2: UIDatePicker! = UIDatePicker()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        self.pickerView1.delegate = self
        self.pickerView2.delegate = self
        
        let toolBars: [UIToolbar] = [UIToolbar(), UIToolbar(), UIToolbar()]
        for toolBar in toolBars {
            toolBar.barStyle = UIBarStyle.Default
            toolBar.translucent = true
            toolBar.tintColor = UIColor(red: 0/255, green: 128/255, blue: 128/255, alpha: 1)
            toolBar.sizeToFit()
            toolBar.userInteractionEnabled = true
        }
        
        let doneButton = UIBarButtonItem(title: "Done", style: UIBarButtonItemStyle.Plain, target: self, action: "donePicker")
        let spaceButton = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.FlexibleSpace, target: nil, action: nil)
        let cancelButton = UIBarButtonItem(title: "Cancel", style: UIBarButtonItemStyle.Plain, target: self, action: "cancelPicker")
        
        let doneButton1 = UIBarButtonItem(title: "Done", style: UIBarButtonItemStyle.Plain, target: self, action: "doneDatePicker1")
        let doneButton2 = UIBarButtonItem(title: "Done", style: UIBarButtonItemStyle.Plain, target: self, action: "doneDatePicker2")
        
        toolBars[0].setItems([cancelButton, spaceButton, doneButton], animated: false)
        toolBars[1].setItems([cancelButton, spaceButton, doneButton1], animated: false)
        toolBars[2].setItems([cancelButton, spaceButton, doneButton2], animated: false)
        
        classificationTextField.inputView = self.pickerView1
        classificationTextField.inputAccessoryView = toolBars[0]
        habitatTextField.inputView = self.pickerView2
        habitatTextField.inputAccessoryView = toolBars[0]
        
        self.datePicker1.datePickerMode = UIDatePickerMode.Date
        dateStartTextField.inputView = self.datePicker1
        dateStartTextField.inputAccessoryView = toolBars[1]
        
        self.datePicker2.datePickerMode = UIDatePickerMode.Date
        dateEndTextField.inputView = self.datePicker2
        dateEndTextField.inputAccessoryView = toolBars[2]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    // The number of columns of data
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    // The number of rows of data
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if (pickerView == self.pickerView1) {
            return classificationOptions.count
        } else {
            return habitatOptions.count
        }
    }
    
    // The data to return for the row and component (column) that's being passed in
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if (pickerView == self.pickerView1) {
            return classificationOptions[row]
        } else {
            return habitatOptions[row]
        }
        
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if (pickerView == self.pickerView1) {
            classificationTextField.text = classificationOptions[row]
        } else {
            habitatTextField.text = habitatOptions[row]
        }
    }
    
    func cancelPicker() {
        // hide the picker view
        self.classificationTextField.resignFirstResponder()
        self.habitatTextField.resignFirstResponder()
        self.dateStartTextField.resignFirstResponder()
        self.dateEndTextField.resignFirstResponder()
        // perform some action
    }
    
    func donePicker() {
    // hide the picker view
        self.cancelPicker()
    // perform some action
    }
    
    func doneDatePicker1() {
        // hide the picker view
        self.cancelPicker()
        // perform some action
        let dateFormatter = NSDateFormatter()
        dateFormatter.dateFormat = "YYYY / MM / dd"
        let dateString1 = dateFormatter.stringFromDate(self.datePicker1.date)
        self.dateStartTextField.text = dateString1
    }
    
    func doneDatePicker2() {
        self.cancelPicker()
        
        let dateFormatter = NSDateFormatter()
        dateFormatter.dateFormat = "YYYY / MM / dd"
        let dateString2 = dateFormatter.stringFromDate(self.datePicker2.date)
        self.dateEndTextField.text = dateString2
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
