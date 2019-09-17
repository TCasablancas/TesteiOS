//
//  Base.swift
//  Investment
//
//  Created by Thyago on 14/09/19.
//  Copyright © 2019 tcasablancas. All rights reserved.
//

import UIKit
import Alamofire
//
//typealias JSON = [String: Any]
//
//class Base {
//    
//    let baseURL = "https://floating-mountain-50292.herokuapp.com/cells.json"
//    
//    static let shared = Base()
//    private init() {}
//    
//    func getPeople(success successBlock: @escaping (GetData) -> Void) {
//        Alamofire.request( baseURL ).responseJSON { response in
//            guard let json = response.result.value as? JSON else { return }
//            do {
//                let thisData = try GetData(json: json)
//                successBlock(thisData)
//            } catch {}
//        }
//    }
//    
//    func getData(fundData: String, completion: @escaping (String) -> Void) {
//        Alamofire.request(fundData).responseJSON { (response) in
//            guard let json = response.result.value as? JSON,
//                let title = json["title"] as? String
//                else { print("NOPE"); return }
//            print("GOT HERE")
//            completion(title)
//        }
//    }
//    
//}
//
