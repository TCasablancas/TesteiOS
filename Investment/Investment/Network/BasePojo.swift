//
//  BasePojo.swift
//  Investment
//
//  Created by Thyago on 14/09/19.
//  Copyright © 2019 tcasablancas. All rights reserved.
//

import ObjectMapper

public class BasePojo: Mappable {
    
    public required convenience init?(map: Map) {
        self.init()
    }
    
    public func mapping(map: Map) {
    }
}
