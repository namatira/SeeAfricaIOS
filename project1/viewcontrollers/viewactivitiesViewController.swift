//
//  viewactivitiesViewController.swift
//  project1
//
//  Created by Asoooy on 11/01/2020.
//  Copyright © 2020 user162958. All rights reserved.
//

import UIKit

class viewactivitiesViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    
    
    
    
    @IBOutlet weak var tableView: UITableView!
    
    var trips = ["kariba bay beach","sunset boating at kariba dam","swimming at victoria falls","viewing falls at victoria falls","zip lining at table mountain"]
    
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
  
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return trips.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cells = tableView.dequeueReusableCell(withIdentifier: "activitycell", for: indexPath)as? activityTableViewCell
        cells?.lbl.text = trips[indexPath.row]
        cells?.img.image = UIImage(named: trips[indexPath.row])
        
        return cells!    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vcc = storyboard?.instantiateViewController(withIdentifier: "views") as? ViewController  ;    self.navigationController?.pushViewController(vcc!, animated: true)
        vcc?.image = UIImage(named: trips[indexPath.row])!
        vcc?.trips = trips[indexPath.row]
    }
    

    

}
