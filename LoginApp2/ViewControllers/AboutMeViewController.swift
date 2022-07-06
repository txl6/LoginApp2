//
//  AboutMeViewController.swift
//  LoginApp2
//
//  Created by Антон Полин  on 05.07.2022.
//

import UIKit

class AboutMeViewController: UIViewController {
    
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var firstNameLabel: UILabel!
    @IBOutlet var secondNameLabel: UILabel!
    @IBOutlet var ageLabel: UILabel!
    @IBOutlet var hobiesLabel: UILabel!
    @IBOutlet var petsLabel: UILabel!
    
    
    var user = ""
    var firstName = ""
    var secondName = ""
    var age = ""
    var hobies = ""
    var cat = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = user
        firstNameLabel.text = "Имя: \(firstName)"
        secondNameLabel.text = "Фамилия: \(secondName)"
        ageLabel.text = "Возраст: \(age)"
        hobiesLabel.text = "Увлечения: \(hobies)"
        petsLabel.text = "Животные: \(cat)"
    }
    
    
    
}
