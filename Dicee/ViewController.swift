//
//  ViewController.swift
//  Dicee
//
//  Created by Ayodeji Ayankola on 8/3/20.
//  Copyright © 2020 konga.com. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var leftImageView: UIImageView!
    
    @IBOutlet weak var rightImageView: UIImageView!
    
    
    @IBOutlet weak var leftScoreLabel: UILabel!

    @IBOutlet weak var rightScoreLabel: UILabel!
    
    
    
    
    var leftScore = 0
    var rightScore = 0
    
    
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    
    }

    
    
    @IBAction func dealTapped(_ sender: Any) {
        
        
        
        //Randomize the numbers
        let leftNumber = Int.random(in: 2...14)
//        print(leftNumber)
        
        let rightNumber = Int.random(in: 2...14)
//        print(rightNumber)
        
        
        //Update the image views
        leftImageView.image = UIImage(named: "card\(leftNumber)")
        
        rightImageView.image = UIImage(named: "card\(rightNumber)")
    
        
    
        
        // MARK: - Compare the random nos
        
        if leftNumber > rightNumber {
            // left side wins
            leftScore += 1
            leftScoreLabel.text = String(leftScore)
            
          
        } else if leftNumber < rightNumber {
            //right side wins
            rightScore += 1
            rightScoreLabel.text = String(rightScore)
            
        } else{
            //Tie
            
            
        }
    }
    
    
    
    

}

