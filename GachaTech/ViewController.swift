//
//  ViewController.swift
//  GachaTech
//
//  Created by 中井日向子 on 2022/05/11.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var monsterImageView: UIImageView!
    @IBOutlet var backgroundImageView: UIImageView!
    
    var number: Int!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setImage()
    }
    
    func setImage() {
        number = Int.random(in: 0...9)
        if number == 0 {
            monsterImageView.image = UIImage(named: "monster010")
            backgroundImageView.image = UIImage(named: "bg_gold")
        } else if number == 1 {
            monsterImageView.image = UIImage(named: "monster008")
            backgroundImageView.image = UIImage(named: "bg_gold")
        } else if number < 5 {
            monsterImageView.image = UIImage(named: "monster006")
            backgroundImageView.image = UIImage(named: "bg_red")
        } else if number < 7 {
            monsterImageView.image = UIImage(named: "monster004")
            backgroundImageView.image = UIImage(named: "bg_blue")
        } else {
            monsterImageView.image = UIImage(named: "monster003")
            backgroundImageView.image = UIImage(named: "bg_blue")
        }
    }
    
    @IBAction func back() {
        self.dismiss(animated: true, completion: nil)
    }

}
