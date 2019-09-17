//
//  InvestCells.swift
//  Investment
//
//  Created by Thyago on 16/09/19.
//  Copyright © 2019 tcasablancas. All rights reserved.
//

import Foundation
import ObjectMapper

class Fund: BasePojo {
    
    @objc dynamic var title: String?
    @objc dynamic var fundName: String?
    @objc dynamic var whatIs: String?
    @objc dynamic var definition: String?
    @objc dynamic var riskTitle: String?
    @objc dynamic var risk: Int = 0
    @objc dynamic var infoTitle: String?
    dynamic var moreInfo: [MoreInfo]?
    dynamic var info: [Info]?
    dynamic var downInfo: [DownInfo]?
    
    convenience required init?(map: Map) {
        self.init()
    }
    
    override func mapping(map: Map) {
        
        title <- map["title"]
        fundName <- map["fundName"]
        whatIs <- map["whatIs"]
        definition <- map["definition"]
        riskTitle <- map["riskTitle"]
        risk <- map["risk"]
        infoTitle <- map["infoTitle"]
        moreInfo <- map["moreInfo"]
        info <- map["info"]
        downInfo <- map["downInfo"]
    }
}

struct Info {
    
    var name: String?
    var data: String?
    
    init(_ map: Map) {
        
    }
    
    mutating func maping(map: Map) {
        
        name <- map["screen.name"]
        data <- map["screen.data"]
    }
}
