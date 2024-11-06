//
//  EducationViewControlerDelegate.swift
//  AboutMe
//
//  Created by Norman Sanchez on 05/11/24.
//
import UIKit

// MARK: UITableViewDelegate
extension EducationViewController: UITableViewDelegate {
    
    // así obtenemos el click en cada elemento.
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath.row)
    }
}
