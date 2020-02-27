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
    
    
    
    let findATutorButton = UIButton()
    
    let calendarButton = UIButton()
    
    let profileButton = UIButton()
    
    let studyGroupsButton = UIButton()
    
    let switchToTutorButton = UIButton()
    
    
    
    
    
    
    func setUpButtons(){
        
        //        Adds all the buttons to the view
        
        view.addSubview(findATutorButton)
        
        view.addSubview(calendarButton)
        
        view.addSubview(profileButton)
        
        view.addSubview(studyGroupsButton)
        
        view.addSubview(switchToTutorButton)
        
        //        Set up button properties
        
        //        Find a tutor
        
        findATutorButton.setTitle("Find a Tutor", for: .normal)
        
        findATutorButton.setTitleColor(.black, for: .normal)
        
        findATutorButton.backgroundColor = .lightGray
        
        findATutorButton.titleLabel?.font = UIFont(name: "Papyrus", size: 35)
        
        findATutorButton.addTarget(self, action: #selector(findATutorAction), for: .touchUpInside)
        
        //        Calendar
        
        calendarButton.setTitle("Calendar", for: .normal)
        
        calendarButton.setTitleColor(.black, for: .normal)
        
        calendarButton.backgroundColor = .lightGray
        
        calendarButton.titleLabel?.font = UIFont(name: "Papyrus", size: 35)
        
        //   calendarButton.addTarget(self, action: #selector(calendarAction), for: .touchUpInside)
        
        //        Profile
        
        profileButton.setTitle("Profile", for: .normal)
        
        profileButton.setTitleColor(.black, for: .normal)
        
        profileButton.backgroundColor = .lightGray
        
        profileButton.titleLabel?.font = UIFont(name: "Papyrus", size: 35)
        
        //  profileButton.addTarget(self, action: #selector(profileAction), for: .touchUpInside)
        
        //        Study Groups
        
        studyGroupsButton.setTitle("Study Groups", for: .normal)
        
        studyGroupsButton.setTitleColor(.black, for: .normal)
        
        studyGroupsButton.backgroundColor = .lightGray
        
        studyGroupsButton.titleLabel?.font = UIFont(name: "Papyrus", size: 35)
        
        //       studyGroupsButton.addTarget(self, action: #selector(studyGroupAction), for: .touchUpInside)
        
        switchToTutorButton.setTitle("Switch to Tutor Account", for: .normal)
        
        switchToTutorButton.setTitleColor(.black, for: .normal)
        
        switchToTutorButton.backgroundColor = .lightGray
        
        switchToTutorButton.titleLabel?.font = UIFont(name: "Papyrus", size: 35)
        
        
        //        Set constraints
        
        findATutorButton.translatesAutoresizingMaskIntoConstraints = false
        calendarButton.translatesAutoresizingMaskIntoConstraints = false
        profileButton.translatesAutoresizingMaskIntoConstraints = false
        studyGroupsButton.translatesAutoresizingMaskIntoConstraints = false
        switchToTutorButton.translatesAutoresizingMaskIntoConstraints = false
        
        //        Find a tutor button
        findATutorButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 100).isActive = true
        findATutorButton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 100).isActive = true
        
        //      Calendar Button
        
        calendarButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 100).isActive = true
        calendarButton.leftAnchor.constraint(equalTo: findATutorButton.rightAnchor, constant: 50).isActive = true
        calendarButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 100).isActive = true
        
        //        Profile Button
        profileButton.topAnchor.constraint(equalTo: findATutorButton.bottomAnchor, constant: 50).isActive = true
        profileButton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 100).isActive = true
        profileButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 100).isActive = true
        
        //        Study Groups Button
        studyGroupsButton.topAnchor.constraint(equalTo: calendarButton.bottomAnchor, constant: 50).isActive = true
        studyGroupsButton.leftAnchor.constraint(equalTo: profileButton.rightAnchor, constant: 50).isActive = true
        studyGroupsButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 100).isActive = true
        studyGroupsButton.bottomAnchor.constraint(equalTo: switchToTutorButton.topAnchor, constant: 100).isActive = true
//        Switch to student button
        
        switchToTutorButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        switchToTutorButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 50).isActive = true
        
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

