//
//  ExperienceViewControllerTableViewDataSource.swift
//  AboutMe
//
//  Created by Norman Sanchez on 06/11/24.
//

import UIKit

// MARK: Experience UITableViewDataSource
extension ExperienceViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        "Experiencia"
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        myExperience.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = experienceTableView.dequeueReusableCell(withIdentifier: "experienceTableViewCustomCell", for: indexPath) as? ExperienceTableViewCell
        
        cell?.companyExperience.text = myExperience[indexPath.row].company
        cell?.imageExperience.image = UIImage(named:myExperience[indexPath.row].image)
        cell?.titleExperience.text = myExperience[indexPath.row].role
        cell?.shortDescriptionExperience.text = myExperience[indexPath.row].description
        cell?.periodOfTime.text = myExperience[indexPath.row].rangeOfDates
        
        return cell!
    }
}
