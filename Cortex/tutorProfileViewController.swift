//
//  tutorProfileViewController.swift
//  Cortex
//
//  Created by Daniel Gurevitch (student LM) on 2/26/20.
//  Copyright © 2020 Daniel Rosen (student LM). All rights reserved.
//
// this class creates the view controller for the tutor profile page. This view controller includes a profile picture (we might end up integrating a camera where you can take a picture of yourself as the profile picture), a text field for a bio, and a text field for the tutor's experience. The profile picture and both text fields can be edited at any time. There will also be a button to edit these things on the view, as well as a settings button and a button to book the tutor


import UIKit

class tutorProfileViewController: UIViewController {

    let settingsButton = UIButton()
    let bioTextField = UITextField()
    
    
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
    
    func setUpBioTextField(){
        
        // added it to the subivew
        view.addSubview(bioTextField)
        
        // set up the properties
        bioTextField.text = "BIO:"
        bioTextField.textColor = UIColor.black
        bioTextField.font = UIFont(name: "Helvetica", size: 25)
               
        // constraints
        bioTextField.translatesAutoresizingMaskIntoConstraints = false
        bioTextField.centerXAnchor.constraint(equalToSystemSpacingAfter: view.centerXAnchor, multiplier: 0).isActive = true
      //  bioTextField.centerYAnchor.constraint(equalTo: requestsButton.topAnchor, constant: -50).isActive = true
        
        
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setUpSettingsButton()
    }
    

   

}
