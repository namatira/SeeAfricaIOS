//
//  welcomeViewController.swift
//  project1
//
//  Created by NAMATIRAI CHIBVONGODZE on 10/01/2020.
//  Copyright © 2020 user162958. All rights reserved.
//

import UIKit

class welcomeViewController: UIViewController {
    
    @IBOutlet weak var lbl: UILabel!
    
    
    
    
    var welcomelabel = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        
        lbl.text = welcomelabel
        
        
 
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    

}
