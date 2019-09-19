//
//  DownInfo.swift
//  Investment
//
//  Created by Thyago on 17/09/19.
//  Copyright © 2019 tcasablancas. All rights reserved.
//

import Foundation
import Alamofire

class DownInfo {
    
    var name: String
    var data: String
    
    init?(json: JSON) {
        
        guard let name = json["name"] as? String,
        let data = json["data"] as? String
            else { return nil }
        
        self.name = name
        self.data = data
    }
}
