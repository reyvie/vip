//
//  TableViewCell.swift
//  vip
//
//  Created by Reyvie Bautista on 2/10/20.
//  Copyright © 2020 Reyvie Bautista. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var logoImage: UIImageView!
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var subTitle: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        displayMode(isDarkMode: UserSettings.isDarkMode())
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    func commonInit(_ imageName: String, title: String, subTitle: String){
        self.logoImage.image = UIImage(named: imageName)
        self.title.text = title
        self.subTitle.text = subTitle
    }
    
    func displayMode(isDarkMode: Bool) {
        self.title.textColor = isDarkMode ? UIColor.white : UIColor.black
        self.subTitle.textColor = isDarkMode ? UIColor.white : UIColor.black
    }
}
