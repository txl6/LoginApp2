//
//  PhotoViewController.swift
//  LoginApp2
//
//  Created by Антон Полин  on 06.07.2022.
//

import UIKit

class PhotoViewController: UIViewController {
    
    @IBOutlet weak var catImage: UIImageView!
    @IBOutlet weak var catImageTwo: UIImageView!
    
    var catOne: String?
    var catTwo: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        catImage.image = UIImage(named: catOne ?? "")
        catImageTwo.image = UIImage(named: catTwo ?? "")
    }
   
}
