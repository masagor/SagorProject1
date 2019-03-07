//
//  ViewController.swift
//  SagorpProj1
//
//  Created by Sagor, Michael A on 2/20/19.
//  Copyright © 2019 Sagor, Michael A. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

   
    
    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var leftImageView: UIImageView!
    
    @IBOutlet weak var rightImageView: UIImageView!
    
    @IBOutlet weak var labelDisplay: UILabel!
    
    @IBOutlet weak var compPic: UIImageView!
   
    @IBAction func buttonTapped(_ sender: UIButton) {
        let numberOne = arc4random_uniform(6) + 1
        
        let numberTwo = arc4random_uniform(6) + 1
        
        label.text = "You Got: \(numberOne + numberTwo)"
        
        leftImageView.image = UIImage(named: "Dice\(numberOne)")
        
        rightImageView.image = UIImage(named: "Dice\(numberTwo)")
    }
    
    @IBAction func buttonFlip(_ sender: UIButton) {
    
        let ranNum = (arc4random_uniform(2)+1)
        if ranNum == 1 {
            compPic.image = UIImage(named: "Coin1.png")
        
            labelDisplay.text = "You Got: Heads"
        } else if ranNum == 2 {
            compPic.image = UIImage(named: "Coin2.png")
            labelDisplay.text = "You Got: Tails"}
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

