//
//  StoryTableViewCell.swift
//  SOPT-week1-assignment
//
//  Created by Sua Han on 2022/05/06.
//

import UIKit

class StoryTableViewCell: UITableViewCell {
    @IBOutlet weak var imageField: UIImageView!
    @IBOutlet weak var idField: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
