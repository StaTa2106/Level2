//
//  SearchGroupCell.swift
//  lesson1SundukovaT
//
//  Created by Татьяна Сундукова on 10.12.2020.
//

import UIKit

class SearchGroupCell: UITableViewCell {

    @IBOutlet weak var infoGroupLabel: UILabel!
    @IBOutlet weak var nameGroupLabel: UILabel!
    @IBOutlet weak var imageGroup: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
