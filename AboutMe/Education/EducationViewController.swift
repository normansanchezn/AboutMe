//
//  EducationViewController.swift
//  AboutMe
//
//  Created by Norman Sanchez on 25/10/24.
//

import UIKit

class EducationViewController: UIViewController {
    
    @IBOutlet var educationalTableView: UITableView!
    private let myCountries = ["Country 1", "Country 2", "Country 3", "Country 4", "Country 5", "Country 6", "Country 7", "Country 8", "Country 9", "Country 10"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        educationalTableView.dataSource = self
        educationalTableView.delegate = self
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
            myCountries.count
        } else {
            2
        }
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // Así solo se crea una sola vez la celda y pordemos ahorrar memoria. .-. LOL
        var cell = educationalTableView.dequeueReusableCell(withIdentifier: "itemCell")
        
        if cell == nil {
            cell = UITableViewCell(style: .default, reuseIdentifier: "itemCell")
            // Aquí tenemos que modificar la información de la tabla.
            cell?.selectionStyle = .none
        }
        
        cell!.textLabel?.text = myCountries[indexPath.row]
        return cell!
    }
}

extension EducationViewController: UITableViewDelegate {
    
    // así obtenemos el click en cada elemento.
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath.row)
    }
}
