//
//  PlantripViewController.swift
//  project1
//
//  Created by NAMATIRAI CHIBVONGODZE on 10/01/2020.
//  Copyright © 2020 user162958. All rights reserved.
//

import UIKit

class PlantripViewController: UIViewController {
    
    
    
  
    
    
    @IBOutlet weak var startdatepicker: UIDatePicker!
    
    
    @IBOutlet weak var enddatepicker: UIDatePicker!
    
    @IBOutlet weak var starttextfield: UITextField!
    
    var startdate = ""
    @IBOutlet weak var endtextfield: UITextField!
    
   var enddate = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

   
    
    
    @IBAction func startdatepickerchanged(_ sender: Any) {
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = DateFormatter.Style.short
        dateFormatter.timeStyle = DateFormatter.Style.short
        
        let strDate = dateFormatter.string(from: startdatepicker.date)
       starttextfield.text = strDate
        
     
        
        
    }
    
    
    
    

    @IBAction func anddatepickerchanged(_ sender: Any) {
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = DateFormatter.Style.short
        dateFormatter.timeStyle = DateFormatter.Style.short
        
        let date = dateFormatter.string(from: enddatepicker.date)
        endtextfield.text = date
        
        
        
    }
    
    
    @IBAction func createtrip(_ sender: Any) {
        self.startdate = starttextfield.text!
        self.enddate = endtextfield.text!
        performSegue(withIdentifier: "date", sender: self)
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var vc = segue.destination as!detailsViewController
        vc.strtdate = startdate
        vc.edate = enddate
        
    }
    
}
