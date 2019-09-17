//
//  DataDownload.swift
//  Investment
//
//  Created by Thyago on 16/09/19.
//  Copyright © 2019 tcasablancas. All rights reserved.
//

import Alamofire
import ObjectMapper
import SwiftyJSON

public class DataDownload: BasePojo {
    
    @objc dynamic var name: String = ""
    @objc dynamic var data: Bool = false
    
    public required convenience init?(map: Map) {
        self.init()
    }
    
    public override func mapping(map: Map) {
        
        name <- map["name"]
        data <- map["data"]
    }
    
    convenience init(name: String, data: Bool) {
        self.init()
        
        self.name = name
        self.data = data
    }
    
    
}
