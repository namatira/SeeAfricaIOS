//
//  ViewController.swift
//  project1
//
//  Created by user162958 on 1/7/20.
//  Copyright © 2020 user162958. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var lbl: UILabel!
    
    
    @IBOutlet weak var img: UIImageView!
    
    var image = UIImage()
    var trips = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        lbl.text =  "\(trips)"
        img.image = image
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func trip(_ sender: Any) {
    }
    
}

