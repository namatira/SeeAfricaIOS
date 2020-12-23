//
//  ChoiceViewController.swift
//  project1
//
//  Created by user162958 on 1/8/20.
//  Copyright © 2020 user162958. All rights reserved.
//

import UIKit

class ChoiceViewController: UIViewController ,UITableViewDataSource,UITableViewDelegate{
    
    
    
    
    @IBOutlet weak var tableView: UITableView!
    
    
    
    
    var places = ["Victoria Falls","Kariba Dam","Great Zimbabwe","Harare Museum","Lower Zabezi","mount Mulange","Table Mountain","Hwange National Park","Egypt Pyramids","Blyde River"]
    
    
  
    
    
    
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tabBarController?.tabBar.isHidden = false
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return places.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "choicecell", for: indexPath)as? ChoiceTableViewCell
        cell?.lbl.text = places[indexPath.row]
        cell?.img.image = UIImage(named: places[indexPath.row])
       
        
        return cell!
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "activity") as? activitychoiceViewController
        self.navigationController?.pushViewController(vc!, animated: true)
        vc?.image = UIImage(named: places[indexPath.row])!
        vc?.place = places[indexPath.row]
        
        //et placevc = storyboard?.instantiateViewController(withIdentifier: "placescell")as?placesViewController
       // placevc?.customInit(placesIndex: indexPath.row, title: places[indexPath.row])
        //self.navigationController?.pushViewController(placevc!, animated: true)
        //tableView.deselectRow(at: indexPath, animated: true)
   }

        // Do any additional setup after loading the  view, typically from a nib
         override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

   
}
