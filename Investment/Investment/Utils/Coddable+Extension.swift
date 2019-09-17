//
//  Coddable+Extension.swift
//  Investment
//
//  Created by Thyago on 16/09/19.
//  Copyright © 2019 tcasablancas. All rights reserved.
//

import UIKit

extension Encodable {
    
    var dictionary: [String: Any]? {
        guard let data = try? JSONEncoder().encode(self) else { return nil }
        return (try? JSONSerialization.jsonObject(with: data, options: .allowFragments)).flatMap { $0 as? [String: Any] }
    }
}
