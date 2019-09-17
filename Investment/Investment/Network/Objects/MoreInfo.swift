//
//  MoreInfo.swift
//  Investment
//
//  Created by Thyago on 17/09/19.
//  Copyright © 2019 tcasablancas. All rights reserved.
//

import Foundation
import ObjectMapper

class MoreInfo: BasePojo {
    
    var month: [YearData]?
    var year: [YearData]?
    var _12months: [YearData]?
    
    convenience required init?(map: Map) {
        self.init()
    }
    
    override func mapping(map: Map) {
        
        month <- map["month"]
        year <- map["year"]
        _12months <- map["12months"]
    }
    
}

struct YearData {
    
    var fund: Double?
    var cdi: Double?
    
    init(_ map: Map) {
        
    }
    
    mutating func mapping(map: Map) {
        
        fund <- map["fund"]
        cdi <- map["CDI"]
    }
}
