//
//  HistoryCellTableViewCell.swift
//  SplitShare
//
//  Created by Garay,Jerry on 9/22/16.
//  Copyright © 2016 Garay,Jerry. All rights reserved.
//

import UIKit

class HistoryCellTableViewCell: UITableViewCell {
    
    @IBOutlet weak var statusLabel: UILabel!
    @IBOutlet weak var billNameLabel: UILabel!
    @IBOutlet weak var costLabel: UILabel!
    @IBOutlet weak var splitLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
