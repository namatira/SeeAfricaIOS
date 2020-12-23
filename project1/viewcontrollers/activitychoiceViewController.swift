//
//  activitychoiceViewController.swift
//  project1
//
//  Created by user162958 on 1/8/20.
//  Copyright © 2020 user162958. All rights reserved.
//

import UIKit

class activitychoiceViewController: UIViewController {
    
    
    
    @IBOutlet weak var lbl: UILabel!
    
    
   
    @IBOutlet weak var img: UIImageView!
    
    var image = UIImage()
    var place = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lbl.text =  "\(place)"
        img.image = image

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func `continue`(_ sender: Any) {
    }
    
}
