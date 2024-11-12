//
//  EducationViewController.swift
//  AboutMe
//
//  Created by Norman Sanchez on 25/10/24.
//

import UIKit

class EducationViewController: UIViewController {
    
    @IBOutlet var educationalTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        educationalTableView.dataSource = self
        educationalTableView.register(UINib(nibName: "EducationalTableViewCell", bundle: nil), forCellReuseIdentifier: "educationalCustomItem")
    }
}
