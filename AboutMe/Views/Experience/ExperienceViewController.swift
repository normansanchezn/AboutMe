//
//  ExperienceViewController.swift
//  AboutMe
//
//  Created by Norman Sanchez on 28/10/24.
//

import UIKit

class ExperienceViewController: UIViewController {
    
    @IBOutlet var experienceTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        experienceTableView.dataSource = self
        experienceTableView.register(UINib(nibName: "ExperienceTableViewCell", bundle: nil), forCellReuseIdentifier: "experienceTableViewCustomCell")
    }
}
