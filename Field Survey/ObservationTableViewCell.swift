//
//  ObservationTableViewCell.swift
//  Field Survey
//
//  Created by Jonah Zukosky on 7/15/18.
//  Copyright © 2018 Zukosky, Jonah. All rights reserved.
//

import UIKit

class ObservationTableViewCell: UITableViewCell {

    
    @IBOutlet weak var icon: UIImageView!
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var date: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
