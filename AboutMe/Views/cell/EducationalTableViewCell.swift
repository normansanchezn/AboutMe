//
//  EducationalTableViewCell.swift
//  AboutMe
//
//  Created by Norman Sanchez on 05/11/24.
//

import UIKit

class EducationalTableViewCell: UITableViewCell {
    
    @IBOutlet var imageCustomView: UIImageView!
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var dateLabel: UILabel!
    @IBOutlet var descriptionLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        titleLabel.font = UIFont.boldSystemFont(ofSize: 20)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
}
