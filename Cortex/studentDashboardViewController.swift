//

//  StudentDashboardViewController.swift

//  Cortex

//

//  Created by Benjamin Warren (student LM) on 2/21/20.

//  Copyright © 2020 Daniel Rosen (student LM). All rights reserved.

//



import Foundation

import UIKit



class studentDashboardViewController: UIViewController {
    
    let settingsButton = UIButton()

    let titleLabel = UILabel()
    
    let findATutorButton = UIButton()
    
    let calendarButton = UIButton()
    
    let profileButton = UIButton()
    
    let studyGroupsButton = UIButton()
    
    let switchToTutorButton = UIButton()
    
    
    
    
    
    
    func setUpLabel(){
        view.addSubview(titleLabel)
        
        // set up the properties
        titleLabel.text = "Tutor Dashboard"
        titleLabel.textColor = UIColor.black
        titleLabel.font = UIFont(name: "Helvetica", size: 25)
        
        // constraints
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.centerXAnchor.constraint(equalToSystemSpacingAfter: view.centerXAnchor, multiplier: 0).isActive = true
        titleLabel.centerYAnchor.constraint(equalTo: findATutorButton.topAnchor, constant: -50).isActive = true
    }
    func setUpButtons(){
        
        //        Adds all the buttons to the view
        
        view.addSubview(findATutorButton)
        
        view.addSubview(calendarButton)
        
        view.addSubview(profileButton)
        
        view.addSubview(studyGroupsButton)
        
        view.addSubview(switchToTutorButton)
        
        view.addSubview(settingsButton)
        
        //        Set up button properties
        
        //        Find a tutor
        
        // set up properties
             findATutorButton.titleLabel?.numberOfLines = 0
             // set up the properties
             findATutorButton.setTitle("Tutor \nRequests" , for: .normal)
             findATutorButton.setTitleColor(.green, for: .normal)
             findATutorButton.backgroundColor = .black
             findATutorButton.titleLabel?.font = UIFont(name: "Helvetica", size: 30)
            findATutorButton.titleLabel?.textAlignment = .center
        
        findATutorButton.addTarget(self, action: #selector(findATutorAction), for: .touchUpInside)
        
        //        Calendar
        
       // set up properties
               calendarButton.setTitle("Calendar" , for: .normal)
               calendarButton.setTitleColor(.yellow, for: .normal)
               calendarButton.backgroundColor = .black
               calendarButton.titleLabel?.font = UIFont(name: "Helvetica", size: 30)
               calendarButton.titleLabel?.textAlignment = .center
               
        
        //   calendarButton.addTarget(self, action: #selector(calendarAction), for: .touchUpInside)
        
        //        Profile
        
         // set up properties
              profileButton.titleLabel?.numberOfLines = 0
              profileButton.setTitle("Profile \nPage" , for: .normal)
              profileButton.setTitleColor(.red, for: .normal)
              profileButton.backgroundColor = .black
              profileButton.titleLabel?.font = UIFont(name: "Helvetica", size: 30)
              profileButton.titleLabel?.textAlignment = .center
        
        //  profileButton.addTarget(self, action: #selector(profileAction), for: .touchUpInside)
        
        //        Study Groups
        
      // set up properties
              studyGroupsButton.titleLabel?.numberOfLines = 0
              studyGroupsButton.setTitle("Study \nGroup" , for: .normal)
              studyGroupsButton.setTitleColor(.blue, for: .normal)
              studyGroupsButton.backgroundColor = .black
              studyGroupsButton.titleLabel?.font = UIFont(name: "Helvetica", size: 30)
              studyGroupsButton.titleLabel?.textAlignment = .center
        
        //       studyGroupsButton.addTarget(self, action: #selector(studyGroupAction), for: .touchUpInside)
        
 switchToTutorButton.titleLabel?.numberOfLines = 0
        switchToTutorButton.setTitle("Switch To \nStudent Account", for: .normal)
        switchToTutorButton.setTitleColor(UIColor.cyan, for: .normal)
        switchToTutorButton.backgroundColor = .black
        switchToTutorButton.titleLabel?.font = UIFont(name: "Helvetica", size: 30)
        switchToTutorButton.titleLabel?.textAlignment = .center
        
//        Settings
        settingsButton.setTitle("Settings" , for: .normal)
               settingsButton.setTitleColor(.black, for: .normal)
               settingsButton.backgroundColor = .white
               settingsButton.titleLabel?.font = UIFont(name: "Helvetica", size: 20)
        
        
        //        Set constraints
        
        findATutorButton.translatesAutoresizingMaskIntoConstraints = false
        calendarButton.translatesAutoresizingMaskIntoConstraints = false
        profileButton.translatesAutoresizingMaskIntoConstraints = false
        studyGroupsButton.translatesAutoresizingMaskIntoConstraints = false
        switchToTutorButton.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        settingsButton.translatesAutoresizingMaskIntoConstraints = false
        
        
//       Title Label
    
        titleLabel.centerXAnchor.constraint(equalToSystemSpacingAfter: view.centerXAnchor, multiplier: 0).isActive = true
        titleLabel.centerYAnchor.constraint(equalTo: findATutorButton.topAnchor, constant: -50).isActive = true
        
        //        Find a tutor button
        findATutorButton.centerXAnchor.constraint(equalTo:view.centerXAnchor, constant: -95).isActive = true
        findATutorButton.centerYAnchor.constraint(equalTo:view.centerYAnchor, constant: -80).isActive = true
        findATutorButton.heightAnchor.constraint(equalToConstant: 100).isActive = true
        findATutorButton.widthAnchor.constraint(equalToConstant: 150).isActive = true
        
        //      Calendar Button
        
       calendarButton.centerXAnchor.constraint(equalTo:view.centerXAnchor, constant: 95).isActive = true
        calendarButton.centerYAnchor.constraint(equalTo:view.centerYAnchor, constant: -80).isActive = true
        calendarButton.heightAnchor.constraint(equalToConstant: 100).isActive = true
        calendarButton.widthAnchor.constraint(equalToConstant: 150).isActive = true
        
        //        Profile Button
       profileButton.centerXAnchor.constraint(equalTo:view.centerXAnchor, constant: -95).isActive = true
        profileButton.centerYAnchor.constraint(equalTo:view.centerYAnchor, constant: 80).isActive = true
        profileButton.heightAnchor.constraint(equalToConstant: 100).isActive = true
        profileButton.widthAnchor.constraint(equalToConstant: 150).isActive = true
        
        //        Study Groups Button
        studyGroupsButton.centerXAnchor.constraint(equalTo:view.centerXAnchor, constant: 95).isActive = true
        studyGroupsButton.centerYAnchor.constraint(equalTo:view.centerYAnchor, constant: 80).isActive = true
        studyGroupsButton.heightAnchor.constraint(equalToConstant: 100).isActive = true
        studyGroupsButton.widthAnchor.constraint(equalToConstant: 150).isActive = true
        //        Switch to student button
        
        switchToTutorButton.centerXAnchor.constraint(equalTo:view.centerXAnchor, constant: 0).isActive = true
        switchToTutorButton.centerYAnchor.constraint(equalTo:profileButton.bottomAnchor, constant: 80).isActive = true
        switchToTutorButton.heightAnchor.constraint(equalToConstant: 100).isActive = true
        switchToTutorButton.widthAnchor.constraint(equalToConstant: 250).isActive = true
        
//      Settings Button
        
    settingsButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 5).isActive = true
        settingsButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 35).isActive = true
        
    }
    
    @objc func findATutorAction(){
        
    }
    
    @objc func calendarAction(){
        
    }
    
    @objc func profileAction(){
        
    }
    
    @objc func studyGroupAction(){
        
    }
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        view.backgroundColor = .gray
        setUpButtons()
        
        
        
    }
    
}

