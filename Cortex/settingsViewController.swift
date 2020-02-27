//
//  settingsViewController.swift
//  Cortex
//
//  Created by Daniel Gurevitch (student LM) on 2/25/20.
//  Copyright © 2020 Daniel Rosen (student LM). All rights reserved.
//
// This class creates the View Controller for the settings page

import UIKit

class settingsViewController: UIViewController {

    let settingsButton = UIButton()
    
    func setUpSettingsButton(){
        
        // added it to the subview
        view.addSubview(settingsButton)
        
        // set up the properties
        settingsButton.setTitle("Settings" , for: .normal)
        settingsButton.setTitleColor(.black, for: .normal)
        settingsButton.backgroundColor = .white
        settingsButton.titleLabel?.font = UIFont(name: "Helvetica", size: 20)
        
        // calls button function
        //findATutorButton.addTarget(self, action: #selector(findATutorAction), for: .touchUpInside)
        
        // constraints
        settingsButton.translatesAutoresizingMaskIntoConstraints = false
        settingsButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 5).isActive = true
        settingsButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 35).isActive = true
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUpSettingsButton()

        // Do any additional setup after loading the view.
    }
    

  

}
