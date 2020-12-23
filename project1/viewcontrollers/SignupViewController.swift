//
//  SignupViewController.swift
//  project1
//
//  Created by NAMATIRAI CHIBVONGODZE on 10/01/2020.
//  Copyright © 2020 user162958. All rights reserved.
//

import UIKit
import CoreData

class SignupViewController: UIViewController {

    @IBOutlet weak var firstnametextfield: UITextField!
    
    
    
    @IBOutlet weak var lastnametextfield: UITextField!
    
    @IBOutlet weak var emailtextfield: UITextField!
    
    @IBOutlet weak var passwordtextfield: UITextField!
    
    
    @IBOutlet weak var signupbutton: UIButton!
    
    
    @IBOutlet weak var errorlabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

     

        
        
        // Do any additional setup after loading the view.
    }
   
    
    
    func setUpElements(){
        errorlabel.alpha = 0
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

  
    @IBAction func signuptapped(_ sender: Any) {
        
        
        
        let appDelegate =  UIApplication.shared.delegate as! AppDelegate
        
        let context = appDelegate.persistentContainer.viewContext
        
        let newUser = NSEntityDescription.insertNewObject(forEntityName: "Users", into: context)
        
        newUser.setValue(firstnametextfield.text, forKey: "firstName")
        newUser.setValue(lastnametextfield.text, forKey: "lastName")
        newUser.setValue(emailtextfield.text, forKey: "email")
        newUser.setValue(passwordtextfield.text, forKey: "password")
        
        
        do {
            try context.save()
            print("saved")
            
            
        } catch {
            
            print ( "Some Error has been Detected")
        }
    }
    
    
    
    
}
