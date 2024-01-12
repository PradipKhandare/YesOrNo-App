//
//  ViewController.swift
//  YesOrNoApp
//
//  Created by NTS on 19/12/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var homeImg: UIImageView!
    
    @IBOutlet weak var answerImg: UIImageView!
    
    var arrayImg = [
    UIImage(imageLiteralResourceName: "yesImg"),
    UIImage(imageLiteralResourceName: "noImg")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        homeImg.layer.borderWidth = 1
        homeImg.layer.masksToBounds = false
        homeImg.layer.borderColor = UIColor.black.cgColor
        homeImg.layer.cornerRadius = homeImg.frame.height/2
        homeImg.clipsToBounds = true
        
        answerImg.layer.borderWidth = 1
        answerImg.layer.masksToBounds = false
        answerImg.layer.borderColor = UIColor.white.cgColor
        answerImg.layer.cornerRadius = answerImg.frame.height/2
        answerImg.clipsToBounds = true
        
    }

    @IBAction func pressedButton(_ sender: UIButton) {
        
        answerImg.image = arrayImg.randomElement()
    }
    
}

