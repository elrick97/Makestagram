//
//  LoginViewController.swift
//  Makestagram
//
//  Created by Ricardo Ramirez on 7/10/18.
//  Copyright © 2018 Ricardo Ramirez. All rights reserved.
//

import Foundation
import UIKit
import FirebaseAuth
import FirebaseAuthUI
import FirebaseDatabase

typealias FIRUser = FirebaseAuth.User

class LoginViewController: UIViewController {
    
    
/*
    let user: FIRUser = Auth.auth().currentUser

    if let user = Auth.auth().currentUser {

        let rootRef = Database.database().reference()
        let userRef = rootRef.child("users").child(user.uid)

        userRef.observeSingleEvent(of: .value, { (snapshot) in
     
         if let userDict = snapshot.value as? [String : Any] {
         print(userDict.debugDescription)
        }
     })
    }
*/
    @IBOutlet weak var loginBtn: UIButton!
    
    @IBAction func loginBtn(_ sender: Any) {
        print("Register or Login button pressed")
        
        guard let authUI = FUIAuth.defaultAuthUI()
            else {return}
        
        authUI.delegate = self
        
        let authViewController = authUI.authViewController()
        present(authViewController, animated: true)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
}

extension LoginViewController: FUIAuthDelegate {
    func authUI(_ authUI: FUIAuth, didSignInWith user: FIRUser?, error: Error?) {
        
        if let error = error {
            print("auth ui error in: \(error.localizedDescription)")
        }
        guard let user = user else {return}
        
        UserService.show(forUID: user.uid) { (user) in
            if let user = user {
                // handle existing user
                User.setCurrent(user)
                
                let storyboard = UIStoryboard(name: "Main", bundle: .main)
                if let initialViewController = storyboard.instantiateInitialViewController() {
                    self.view.window?.rootViewController = initialViewController
                    self.view.window?.makeKeyAndVisible()
                }
            } else {
                // handle new user
                self.performSegue(withIdentifier: Constants.Segue.toCreateUsername, sender: self)
            }
        }
    }
}









