//
//  CityTableViewCell.swift
//  ARC
//
//  Created by Ekaterina Yashunina on 06.09.2023.
//

import UIKit

class CityTableViewCell: UITableViewCell {

    @IBOutlet weak var cityNameLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
