//
//  ViewController.swift
//  ToothlessTheDragon
//
//  Created by elliot on 2/10/15.
//  Copyright © 2015 Silverstripe. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet weak var dragonImage: UIImageView!
    @IBOutlet weak var displayLabel: UILabel!
    @IBAction func saySomethingTapped(sender: UIButton) {
        //daniel did this array!
        let dragons: [String] = ["Toothless", "Tornado", "Cloudjumper", "Skullcrusher", "Stormfly"]
        
        //elliot did the random number
        let randomNumber: Int = random() % dragons.count
        
        //daniel chooses the dragon
        let dragon: String = dragons[randomNumber]
        
        //elliot is doing the images

        let chosenDragonImage = UIImage(named: dragon.lowercaseString + ".png")
        
        //daniel does contatenation
        displayLabel.text = "Hello " + dragon + "!"
        dragonImage.image = chosenDragonImage
    }

}

