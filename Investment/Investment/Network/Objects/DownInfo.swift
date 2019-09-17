//
//  DownInfo.swift
//  Investment
//
//  Created by Thyago on 17/09/19.
//  Copyright © 2019 tcasablancas. All rights reserved.
//

import Foundation
import ObjectMapper

class DownInfo: BasePojo {
    
    @objc dynamic var name: String?
    @objc dynamic var data: String?
    
    convenience required init?(map: Map) {
        self.init()
    }
    
    override func mapping(map: Map) {
        
        name <- map["screen.name"]
        data <- map["screen.data"]
    }
}
