//
//  Currency.swift
//  Bitcoin Conversion App
//
//  Created by Mahendra Vishwakarma on 08/01/19.
//  Copyright © 2019 Mahendra Vishwakarma. All rights reserved.
//

import UIKit

let currencies = ["INR", "USD" ,"CHF", "AUD", "CAD" ,"GBP" ,"CHY","JPY"]

class Currency: NSObject {
    var name:String?
    var symbol:UIImage?
    
     init(index:Int) {
        super.init()
        name = currencies[index]
        symbol = UIImage.init(named: name ?? "")
    }
    
}

