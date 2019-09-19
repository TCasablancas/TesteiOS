//
//  InfoCell.swift
//  Investment
//
//  Created by Thyago on 18/09/19.
//  Copyright © 2019 tcasablancas. All rights reserved.
//

import UIKit

class InfoCell: UITableViewCell {

    @IBOutlet weak var lbName: UILabel!
    @IBOutlet weak var lbData: UILabel!
    
    var item : Fund! {
        
        didSet {
            
            self.lbName?.text = item.infoTitle
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
