//
//  Cells.swift
//  Investment
//
//  Created by Thyago on 14/09/19.
//  Copyright © 2019 tcasablancas. All rights reserved.
//

import ObjectMapper
import Alamofire

class Cells: BasePojo {
    
    var cells: [Cells] = []
    
    var id : Int?
    var type : Int?
    var message : String?
    var typefield : Bool?
    var hidden : Bool?
    var topSpacing : Int?
    var show : Bool?
    var required : Bool?
    
    required convenience init?(map: Map) {
        self.init()
    }
    
    override func mapping(map: Map) {
        
        id <- map["id"]
        type <- map["type"]
        message <- map["message"]
        typefield <- map["typefield"]
        hidden <- map["hidden"]
        topSpacing <- map["topSpacing"]
        show <- map["show"]
        required <- map["required"]
    }
}
