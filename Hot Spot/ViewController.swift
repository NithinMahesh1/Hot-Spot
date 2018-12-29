//
//  ViewController.swift
//  Hot Spot
//
//  Created by nithin mahesh on 12/28/18.
//  Copyright © 2018 nithin mahesh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func createTable() {
        print("CREATE TAPPED")
    }
    
    @IBAction func insertUser() {
        print("INSERT TAPPED")
        let alert = UIAlertController(title: "Insert User", message: nil, preferredStyle: .alert)
            alert.addTextField { (tf) in tf.placeholder = "Name"}
            alert.addTextField { (tf) in tf.placeholder = "Email"}
        let action = UIAlertAction(title: "Submit", style: .default) { (_) in
        guard let userIDString = alert.textFields?.first?.text,
            let email = alert.textFields?.last?.text
                else {return}
            print(userIDString)
            print(email)
        }
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }
    
    
    @IBAction func listUsers() {
        print("LIST TAPPED")
    }
    
    
    
    
    
}

