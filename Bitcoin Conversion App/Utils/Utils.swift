//
//  Alert.swift
//  Bitcoin Conversion App
//
//  Created by Mahendra Vishwakarma on 08/01/19.
//  Copyright © 2019 Mahendra Vishwakarma. All rights reserved.
//

import UIKit

class Alert: NSObject {

    fileprivate class func Alert(){
        
        let alert = UIAlertController(title: "", message: "", preferredStyle: .actionSheet)
        let Ok = UIAlertAction(title: "OK", style: .default) { (alrt) in
            
        }
        
        alert.addAction(Ok)
        
    }
}
