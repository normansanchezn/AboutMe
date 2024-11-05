//
//  EducationViewController.swift
//  AboutMe
//
//  Created by Norman Sanchez on 25/10/24.
//

import UIKit

class EducationViewController: UIViewController {
    
    @IBOutlet var educationalTableView: UITableView!

    private let myEducations = [Education(
        title: "Instituto Politécnico Nacional",
        rangeOfTime: "2012 - 2017",
        description: "Estudié Ingeniería en Comunicaciones y Electrónica.",
        image: "ipn"
    ), Education(
        title: "Pontificia Ubnicación Católica de Chile",
        rangeOfTime: "2024 - presente",
        description: "Estoy estudiando la Maestría en Ciencia de Datos.",
        image: "pucdc"
    )]
    
    private let myVolunteers = [Education(
        title: "Centro Nacional de las Artes",
        rangeOfTime: "2015 - 2016",
        description: "Realicé un libro de electrónica básica para un taller.",
        image: "cenart"
    )]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        educationalTableView.dataSource = self
        educationalTableView.delegate = self
        educationalTableView.register(UINib(nibName: "EducationalTableViewCell", bundle: nil), forCellReuseIdentifier: "educationalCustomItem")
    }
}

// MARK: UITableViewDataSource
extension EducationViewController: UITableViewDataSource {
    
    // Ponemos el numero de secciones que tiene mi tabla.
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    // Aquí se configura que sección y como se pinta.
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return if (section == 0) {
            myEducations.count
        } else {
            myVolunteers.count
        }
    }
    
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

extension EducationViewController: UITableViewDelegate {
    
    // así obtenemos el click en cada elemento.
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath.row)
    }
}
