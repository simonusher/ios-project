//
//  BookTableViewCell.swift
//  235040_pam_project
//
//  Created by Szymon on 22/01/2019.
//  Copyright © 2019 pwr. All rights reserved.
//

import UIKit

class BookTableViewCell: UITableViewCell {
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var authorLabel: UILabel!
    @IBOutlet var thumbnailImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
