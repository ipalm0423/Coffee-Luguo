//
//  MyCoffeeTableViewCell.swift
//  Coffee Luguo
//
//  Created by Laibit on 2015/9/19.
//  Copyright © 2015年 陳冠宇. All rights reserved.
//

import UIKit

class MyCoffeeTableViewCell: UITableViewCell {
    
    @IBOutlet weak var coffeeIdLabel : UILabel!
    @IBOutlet weak var introductionLabel :UILabel!
    @IBOutlet weak var coffeeImageView: UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
