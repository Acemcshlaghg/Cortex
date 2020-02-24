//
//  HomeScreenViewController.swift
//  Cortex
//
//  Created by Daniel Rosen (student LM) on 2/21/20.
//  Copyright © 2020 Daniel Rosen (student LM). All rights reserved.
//

import UIKit

class HomeScreenViewController: UIViewController {
    let label = UILabel();
    func setUpLabel(){
           view.addSubview(label);

           label.text = "label";
           label.textColor = UIColor.blue;
           label.translatesAutoresizingMaskIntoConstraints = false;
           label.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0).isActive = true;
           label.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 300).isActive = true;
           
           label.widthAnchor.constraint(equalToConstant: 300).isActive = true;
           label.heightAnchor.constraint(equalToConstant: 300).isActive = true;
       }
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        view.backgroundColor = UIColor.white;
        print("working")
        setUpLabel();
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
