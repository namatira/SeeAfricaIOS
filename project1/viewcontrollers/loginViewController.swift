//
//  loginViewController.swift
//  project1
//
//  Created by user162958 on 1/8/20.
//  Copyright © 2020 user162958. All rights reserved.
//

import UIKit
import CoreData

class loginViewController: UIViewController {

    @IBOutlet weak var firstnametextfield: UITextField!
    
    
    @IBOutlet weak var lastnametextfield: UITextField!
    
   
    @IBOutlet weak var errorlabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        
        errorlabel.alpha = 0

        let appDelegate =  UIApplication.shared.delegate as! AppDelegate
        
        let context = appDelegate.persistentContainer.viewContext
        
        
        
        
        let request = NSFetchRequest<NSFetchRequestResult>(entityName: "Users")
        
        request.returnsObjectsAsFaults = false
        do {
            let reusutls = try context.fetch(request)
            if reusutls.count > 0 {
                
                for r in reusutls as! [NSManagedObject]
                {
                    
                    if let email  = r.value(forKey:"email") as? String
                    {print(email)}
                    
                }
                
            }
            else {print("Cannot fetch results")
                
            }
        }
        catch {
            
            print("error")
            
        }

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showtab" {
            let mytab = segue.destination as! UITabBarController
            let tabscene = mytab.viewControllers![0] as! welcomeViewController
            tabscene.welcomelabel = "Welcome"
            
            
        }
    }
   
    @IBAction func logintapped(_ sender: Any) {
        
   
        
        let appDelegate =  UIApplication.shared.delegate as! AppDelegate
        
        let context = appDelegate.persistentContainer.viewContext
      let userFetch = NSFetchRequest<NSFetchRequestResult>(entityName: "Users")
        let users = try! context.fetch(userFetch)
        if let std = users as? [Users] {
            for ind in std {
                print("ID: \(ind.firstName!)")
                print("Name: \(ind.lastName!)")
                print("Email: \(ind.email!)")
                print("Phone: \(ind.password)")
            }
        }
        
        let loginFetch = NSFetchRequest<NSFetchRequestResult>(entityName: "Users")
        loginFetch.fetchLimit = 1
        loginFetch.predicate = NSPredicate(format: "email= %@", lastnametextfield.text!)
        let Availableuser = try! context.fetch(loginFetch)
        
        //check if the student exist
        if let users = Availableuser as? [Users] {
            print("logged in")
            let vc = storyboard?.instantiateViewController(withIdentifier: "home") as? welcomeViewController;
            //self.navigationController?.pushViewController(vc!, animated: true)
        
               performSegue(withIdentifier: "showtab", sender: self)
        } else {
            
            errorlabel.text = "Does not exist signup"
        }
    }
    
    
    }
