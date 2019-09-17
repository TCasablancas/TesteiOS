//
//  InvestmentViewController.swift
//  Investment
//
//  Created by Thyago on 16/09/19.
//  Copyright © 2019 tcasablancas. All rights reserved.
//

import UIKit
import Alamofire
import AlamofireObjectMapper
import ObjectMapper
import SwiftyJSON

class InvestmentViewController: UIBaseViewController {
    
    @IBOutlet weak var firstTitle: UILabel!
    @IBOutlet weak var bigTitle: UILabel!
    @IBOutlet weak var secondTitle: UILabel!
    @IBOutlet weak var mainDescription: UILabel!
    @IBOutlet weak var chartTitle: UILabel!
    
    @IBOutlet weak var tableTitle: UILabel!
    @IBOutlet weak var firstTable: UITableView!
    @IBOutlet weak var secondTable: UITableView!
    
    @IBOutlet weak var btnInvest: UIButton!
    @IBOutlet weak var btnInvestment: UIButton!
    @IBOutlet weak var btnContact: UIButton!
    
    let url = "https://floating-mountain-50292.herokuapp.com/fund.json"
    
    var investCell = [Fund]()
    
    var dataDownload = [DownInfo]()
    var downloadCell = [DownloadCell]()
    
    override func viewDidLoad() {
        
        self.setupUI()
        self.setupTexts()
        
        self.downloadNib()
        
        self.mapApi()
        self.mapApiTable()
        
        self.secondTable.delegate = self
        self.secondTable.dataSource = self
        
        self.btnContact.addTarget(self, action: #selector(sendToContact), for: .touchUpInside)
        
    }
    
    func downloadNib() {
        
        self.secondTable.register(DownloadCell.nib(), forCellReuseIdentifier: "Cell")
    }
}

//MARK: API Data Read

extension InvestmentViewController {
    
    func mapApi() {
        
        Alamofire.request(url).responseObject(keyPath: "screen") { (response: DataResponse<Fund>) in

            let screen = response.result.value

            
            
            self.firstTitle.text = screen?.title
            self.bigTitle.text = screen?.fundName
            self.secondTitle.text = screen?.whatIs
            self.mainDescription.text = screen?.definition


            self.chartTitle.text = screen?.riskTitle

            self.tableTitle.text = screen?.infoTitle

        }
    }
    
    func mapApiTable() {
        
        Alamofire.request("\(url)").responseObject(keyPath: "screen") { (response: DataResponse<Fund>) in
            
            self.secondTable.reloadData()
            let downInfo = response.result.value
            
            
            print(downInfo?.info)
        }
    }
}

//MARK: General

extension InvestmentViewController {
    
    @objc func sendToContact() {
        
        self.performSegue(withIdentifier: Constants.Segues.SHOW_CONTACT, sender: "nil")
    }
}


extension InvestmentViewController : UITableViewDataSource, UITableViewDelegate {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.investCell.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cell = self.secondTable.dequeueReusableCell(withIdentifier: "Cell") as! DownloadCell

        let index = indexPath.row
        let item = self.dataDownload[index]

        cell.item = item
        
        cell.lbTitle.text = item.name

        return cell
    }
}

extension InvestmentViewController : SetupUI {
    
    func setupUI() {
        
        Theme.default.textAsMainBold(self.firstTitle)
        Theme.default.textAsListTitleDark(self.bigTitle)
        Theme.default.textAsMainBold(self.secondTitle)
        Theme.default.textAsMain(self.mainDescription)
        
        Theme.default.textAsMainBold(self.chartTitle)
        Theme.default.textAsMainBold(self.tableTitle)
        
        Theme.default.mainBtnRounded(self.btnInvest)
        
        Theme.default.mainBtn(self.btnInvestment)
        Theme.default.mainBtn(self.btnContact)
        
    }
    
    func setupTexts() {
        
        
        self.btnInvest.setTitle("Investir", for: .normal)
        self.btnInvestment.setTitle("Investimento", for: .normal)
        self.btnContact.setTitle("Contato", for: .normal)
        
    }
}
