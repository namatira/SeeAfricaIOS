//
//  detailsViewController.swift
//  project1
//
//  Created by NAMATIRAI CHIBVONGODZE on 10/01/2020.
//  Copyright © 2020 user162958. All rights reserved.
//

import UIKit
import CoreData

class detailsViewController: UIViewController {
    
    
    
    @IBOutlet weak var startdatelbl: UILabel!
    
    
    @IBOutlet weak var enddatelbl: UILabel!
    
    
    
    @IBOutlet weak var tripnametextfield: UITextField!
    
    @IBOutlet weak var activitiestextfield: UITextField!
    
    
 
    @IBOutlet weak var summary: UITextView!
    
    
    
    @IBOutlet weak var errorlabel: UILabel!
    
    var trips = [Trip]()
  var strtdate =  ""
    var edate = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
         startdatelbl.text = strtdate
        enddatelbl.text = edate
      errorlabel.alpha = 0
        
       
        let tripappDelegate =  UIApplication.shared.delegate as! AppDelegate
        
        let tripcontext = tripappDelegate.persistentContainer.viewContext

        let request = NSFetchRequest<NSFetchRequestResult>(entityName: "Trip")
        
        request.returnsObjectsAsFaults = false
        do {
            let reusutls = try tripcontext.fetch(request)
            if reusutls.count > 0 {
                
                for r in reusutls as! [NSManagedObject]
                {
                    
                    if let tripname  = r.value(forKey:"name") as? String
                    {print(tripname)}
                    
                }
                
            }
            else {print("Cannot fetch results")
                
            }
        }
        catch {
            
            print("error")
            
        }
     
    }

    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
   

   
   
    @IBAction func savetrip(_ sender: Any) {
        
        let tripappDelegate =  UIApplication.shared.delegate as! AppDelegate
        
        let tripcontext = tripappDelegate.persistentContainer.viewContext
        
        let trips = NSEntityDescription.insertNewObject(forEntityName: "Trip", into: tripcontext)
        
        
        
        trips.setValue(tripnametextfield.text, forKey: "name")
        trips.setValue(activitiestextfield.text, forKey: "activity")
        
        
        
        do {
            try tripcontext.save()
            print("saved")
            
            
        } catch {
            
            print ( "Some Error has been Detected")
        }
        
        
    }
    
    
    
    @IBAction func viewtripplans(_ sender: Any) {
    }
    
    
    
    
}
