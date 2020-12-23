//
//  createtripViewController.swift
//  project1
//
//  Created by Asoooy on 11/01/2020.
//  Copyright © 2020 user162958. All rights reserved.
//

import UIKit
import CoreData

class createtripViewController: UIViewController ,UITableViewDataSource{
    

    @IBOutlet weak var tableView: UITableView!
    
    var trips = [Trip]()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tabBarController?.tabBar.isHidden = false
        let fecthRequest: NSFetchRequest < Trip> = Trip.fetchRequest()
        do{
       let trips = try persistanceservice.context.fetch(fecthRequest)
            self.trips = trips
            self.tableView.reloadData()
        }catch{}
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
  

   
    
    @IBAction func addtapped(_ sender: Any) {
        
        
        let alert = UIAlertController(title: "add trip", message: "trip planner ", preferredStyle: .alert)
        alert.addTextField { (textfield) in
            textfield.placeholder = "tripname"
            
        }
        alert.addTextField { (textfield) in
            
            textfield.placeholder = "activities"
            
        }
        
        alert.addTextField { (textfield) in
            
            textfield.placeholder = "budget"
            
        }
        
        
        let action = UIAlertAction(title: "create", style: .default) { (_) in
            let tripname = alert.textFields?.first?.text!
            let activities = alert.textFields?.last?.text!
            
            print(tripname)
            print(activities)
            
            let trips = Trip(context: persistanceservice.context)
            trips.name = tripname
            trips.activity = activities
            
            persistanceservice.saveContext()
            self.trips.append(trips)
            self.tableView.reloadData()
            
            
            
            
        }
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
      
        }
    

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return trips.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        
        let cell = UITableViewCell(style: .subtitle, reuseIdentifier: nil)
        cell.textLabel?.text = trips[indexPath.row].name
        cell.detailTextLabel?.text = trips[indexPath.row].activity
       // cell.detailTextLabel?.text = trips[indexPath.row].
        return cell
    }
    
    
    
    @IBAction func viewtrips(_ sender: Any) {
        
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
                        
                     
                    {
                        self.tableView.reloadData()
                        print(tripname)
                        
                    }
                    
                }
                
            }
            else {print("Cannot fetch results")
                
            }
        }
        catch {
            
            print("error")
            
        }
        
        
        
        
    }
    
    
  

    
    
    
}
