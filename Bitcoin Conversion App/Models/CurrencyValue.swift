//
//  CurrencyValue.swift
//  
//
//  Created by Mahendra Vishwakarma on 08/01/19.
//

import UIKit

struct CurrencyData: Codable {

    var average: String?
    var ask:String?
    var bid : String?
    var timestamp:String?
    var last: String?
    
    private enum CodingKeys : String, CodingKey{
       case average = "averages"
        case ask
        case bid
        case timestamp
        case last
    }
    
}
