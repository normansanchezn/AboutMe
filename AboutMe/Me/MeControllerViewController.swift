//
//  MeControllerViewController.swift
//  AboutMe
//
//  Created by Norman Sanchez on 24/10/24.
//

import UIKit
import MapKit

class MeControllerViewController: UIViewController {

    @IBOutlet var textDescription: UILabel!
    @IBOutlet weak var peronalMap: MKMapView!
    @IBOutlet var textPlace: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        title = "About me"
        textDescription.text = "👋🏽 Hello! My name is Norman Sánchez, and I am a Mobile Developer specializing in both iOS and Android. 🧑🏽‍💻 I have a passion for new technologies 🧠 and enjoy reading about romance, science fiction, philosophy, and psychology. In my free time, I love playing video games like Fortnite and FIFA. 🎮"
        

        textPlace.text = "📌 I live in Chalco, State of Mexico. My native language is Spanish 🇲🇽, and I am also fluent in English. 🇺🇸"
        
        let initialLocation = CLLocationCoordinate2D(latitude: 19.264722222222, longitude: -98.8975)
        peronalMap.setRegion(MKCoordinateRegion(center: initialLocation, span: MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05)), animated: true)
    }
    
}
