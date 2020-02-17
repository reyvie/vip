//
//  ThirdPageTableViewCell.swift
//  vip
//
//  Created by Reyvie Bautista on 2/10/20.
//  Copyright © 2020 Reyvie Bautista. All rights reserved.
//

import UIKit

class ThirdPageTableViewCell: UITableViewCell {
    @IBOutlet weak var timeInLbl: UILabel!
    @IBOutlet weak var lateInLbl: UILabel!
    @IBOutlet weak var outToLunchLbl: UILabel!
    @IBOutlet weak var backFromLunchLbl: UILabel!
    @IBOutlet weak var lateBackFromLunchLbl: UILabel!
    @IBOutlet weak var timeOutLbl: UILabel!
    @IBOutlet weak var underTimeLbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    func commonInit(timeIn: String, lateIn: String, outToLunch: String, backFromLunch: String, lateBackFromLunch: String, timeOut: String, underTime: String){
        self.timeInLbl.text = timeIn
        self.lateInLbl.text = lateIn
        self.outToLunchLbl.text = outToLunch
        self.backFromLunchLbl.text = backFromLunch
        self.lateBackFromLunchLbl.text = lateBackFromLunch
        self.timeOutLbl.text = timeOut
        self.underTimeLbl.text = underTime
        
    }
}
