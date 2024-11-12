//
//  Untitled.swift
//  AboutMe
//
//  Created by Norman Sanchez on 05/11/24.
//

import UIKit

// MARK: Educational UITableViewDataSource
extension EducationViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0 {
            return "Educación"
        }
        return "Voluntariado"
    }
    
    // Ponemos el numero de secciones que tiene mi tabla.
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    // Agrega un alto automático a las tablas custom.
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    
    // Aquí se configura que sección y como se pinta.
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return if (section == 0) {
            myEducations.count
        } else {
            myVolunteers.count
        }
    }
    
    // MARK: Table's configuration.
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.section == 0 {
            let cell = educationalTableView.dequeueReusableCell(withIdentifier: "educationalCustomItem", for: indexPath) as? EducationalTableViewCell
            
            cell?.imageCustomView.image = UIImage(named: myEducations[indexPath.row].image)
            cell?.titleLabel.text = myEducations[indexPath.row].title
            cell?.dateLabel.text = myEducations[indexPath.row].rangeOfTime
            cell?.descriptionLabel.text = myEducations[indexPath.row].description
            cell?.selectionStyle = .none
            return cell!
            
        } else {
            let cell = educationalTableView.dequeueReusableCell(withIdentifier: "educationalCustomItem", for: indexPath) as? EducationalTableViewCell
            
            cell?.imageCustomView.image = UIImage(named: myVolunteers[indexPath.row].image)
            cell?.titleLabel.text = myVolunteers[indexPath.row].title
            cell?.dateLabel.text = myVolunteers[indexPath.row].rangeOfTime
            cell?.descriptionLabel.text = myVolunteers[indexPath.row].description
            cell?.selectionStyle = .none
            return cell!
        }
    }
}
