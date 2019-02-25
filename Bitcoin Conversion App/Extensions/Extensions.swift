//
//  View.swift
//  Bitcoin Conversion App
//
//  Created by Mahendra Vishwakarma on 08/01/19.
//  Copyright © 2019 Mahendra Vishwakarma. All rights reserved.
//

import UIKit

extension UIView {
    class func getNib<T: UIView>() -> T {
        return Bundle.main.loadNibNamed(String(describing: T.self), owner: nil, options: nil)![0] as! T
    }
}
extension WelcomeVC:UIPickerViewDelegate, UIPickerViewDataSource{
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return 10
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return "\(row)"
    }
    
    
    func setup(){
        
        self.view.addSubview(dropDownView)
        self.dropDownView.cancelButton.target = self
        self.dropDownView.cancelButton.action = #selector(self.cancelButton)
        self.dropDownView.doneButton.target = self
        self.dropDownView.doneButton.action = #selector(self.doneButton)
        self.dropDownView.picker.delegate = self
        self.dropDownView.picker.dataSource = self
        
        dropDownView.isHidden = true
        getDropDown()
        
    }
    
    
    func getDropDown(){
        dropDownView.isHidden = false
        UIView.animate(withDuration: 0.4) {
            self.dropDownView.frame = CGRect(x: 0, y: UIScreen.main.bounds.size.height, width: UIScreen.main.bounds.size.width, height: 200)
        }
        
    }
    
    func getDropUp(){
        
        UIView.animate(withDuration: 0.4) {
            self.dropDownView.frame = CGRect(x: 0, y: UIScreen.main.bounds.size.height-200, width: UIScreen.main.bounds.size.width, height: 200)
        }
    }
    
    @objc func doneButton(){
        getDropDown()
    }
    
    @objc func cancelButton(){
        getDropDown()
    }
    
}
