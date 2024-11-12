//
//  ExperienceTableViewCell.swift
//  AboutMe
//
//  Created by Norman Sanchez on 12/11/24.
//

import UIKit

class ExperienceTableViewCell: UITableViewCell {
    
    @IBOutlet var imageExperience: UIImageView!
    @IBOutlet var titleExperience: UILabel!
    @IBOutlet var companyExperience: UILabel!
    @IBOutlet var shortDescriptionExperience: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setupView()
    }

    private func setupView() {
        titleExperience.font = .preferredFont(forTextStyle: .headline)
        companyExperience.font = .preferredFont(forTextStyle: .subheadline)
        shortDescriptionExperience.font = .preferredFont(forTextStyle: .body)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
}
