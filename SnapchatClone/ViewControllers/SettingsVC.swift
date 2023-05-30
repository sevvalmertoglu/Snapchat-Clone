//
//  SettingsVC.swift
//  SnapchatClone
//
//  Created by Şevval Mertoğlu on 23.05.2023.
//

import UIKit
import FirebaseCore
import FirebaseFirestore
import FirebaseAuth
import FirebaseStorage


class SettingsVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
       
    }
    
    @IBAction func logoutClicked(_ sender: Any) {
        
        do {
            try Auth.auth().signOut()
            self.performSegue(withIdentifier: "toSignInVC", sender: nil)
        } catch {
            
        }
    }
    
    
}
