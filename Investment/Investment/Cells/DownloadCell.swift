//
//  DownloadCell.swift
//  Investment
//
//  Created by Thyago on 16/09/19.
//  Copyright © 2019 tcasablancas. All rights reserved.
//

import UIKit
import Alamofire

class DownloadCell: UITableViewCell {

    @IBOutlet weak var lbTitle: UILabel!
    @IBOutlet weak var btnDownload: UIButton!
    
    var item : DownInfo! {
        
        didSet {
            
            self.lbTitle.text = item.name
            self.btnDownload.setTitle("Download", for: .normal)
            
            self.setLayout()
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
    
    
    func setLayout() {
    
        Theme.default.textAsMain(self.lbTitle)
    }
}
