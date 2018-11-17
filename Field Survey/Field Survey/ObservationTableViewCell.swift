//
//  ObservationTableViewCell.swift
//  Field Survey
//
//  Created by Robert Graman on 11/16/18.
//  Copyright © 2018 Robert Graman. All rights reserved.
//

import UIKit

class ObservationTableViewCell: UITableViewCell {
    @IBOutlet weak var icon: UIImageView!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
