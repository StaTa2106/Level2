//
//  FriendsCell.swift
//  lesson1SundukovaT
//
//  Created by Татьяна Сундукова on 09.12.2020.
//

import UIKit

class FriendsCell: UITableViewCell {
    
    @IBOutlet weak var friendName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}
