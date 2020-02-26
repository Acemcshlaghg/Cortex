//
//  tutorDashboardViewController.swift
//
//
//  Created by Daniel Gurevitch (student LM) on 2/21/20.
//
// This class creates the dashboard for the tutors. It has 5 buttons: one to look at tutor requests, one to look at the calendar, one to look at study groups, 1 to look at the tutor's profile, and one to switch to the tutor's student account. There is also a button to go to settings

import UIKit

class tutorDashboardViewController: UIViewController {
    
    // test to see if this is deleted
    
    // creating the buttons for the dashboard that will go onto the view controller
    let settingsButton = UIButton()
    let requestsButton = UIButton()
    let calendarButton = UIButton()
    let studyGroupButton = UIButton()
    let profileButton = UIButton()
    let titleLable = UILabel()
    let switchToStudentButton = UIButton()
    
    func setUpTitleLable(){
        
        // added it to the subview
        view.addSubview(titleLable)
        
        // set up the properties
        titleLable.text = "Tutor Dashboard"
        titleLable.textColor = UIColor.black
        titleLable.font = UIFont(name: "Helvetica", size: 25)
        
        // constraints
        titleLable.translatesAutoresizingMaskIntoConstraints = false
        titleLable.centerXAnchor.constraint(equalToSystemSpacingAfter: view.centerXAnchor, multiplier: 0).isActive = true
        titleLable.centerYAnchor.constraint(equalTo: requestsButton.topAnchor, constant: -50).isActive = true
        
         
        
        
        
    }
    // settings button that goes onto the top left of the screen. will segueway to the settings view controller when clicked
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
    
    func setUpRequestsButton(){
        
        // added it to the subview
        view.addSubview(requestsButton)
        
        // set up properties
        requestsButton.titleLabel?.numberOfLines = 0
        // set up the properties
        requestsButton.setTitle("Tutor \nRequests" , for: .normal)
        requestsButton.setTitleColor(.green, for: .normal)
        requestsButton.backgroundColor = .black
        requestsButton.titleLabel?.font = UIFont(name: "Helvetica", size: 30)
        requestsButton.titleLabel?.textAlignment = .center
        
        
        // calls button function
        //findATutorButton.addTarget(self, action: #selector(findATutorAction), for: .touchUpInside)
        
        // constraints
        requestsButton.translatesAutoresizingMaskIntoConstraints = false
        requestsButton.centerXAnchor.constraint(equalTo:view.centerXAnchor, constant: -95).isActive = true
        requestsButton.centerYAnchor.constraint(equalTo:view.centerYAnchor, constant: -80).isActive = true
        requestsButton.heightAnchor.constraint(equalToConstant: 100).isActive = true
        requestsButton.widthAnchor.constraint(equalToConstant: 150).isActive = true
        
        
        
    }
    
    func setUpCalendarButton(){
        
        // added it to the subview
        view.addSubview(calendarButton)
        
        // set up properties
        calendarButton.setTitle("Calendar" , for: .normal)
        calendarButton.setTitleColor(.yellow, for: .normal)
        calendarButton.backgroundColor = .black
        calendarButton.titleLabel?.font = UIFont(name: "Helvetica", size: 30)
        calendarButton.titleLabel?.textAlignment = .center
        
        
        // calls button function
        //findATutorButton.addTarget(self, action: #selector(findATutorAction), for: .touchUpInside)
        
        // constraints
        calendarButton.translatesAutoresizingMaskIntoConstraints = false
        calendarButton.centerXAnchor.constraint(equalTo:view.centerXAnchor, constant: 95).isActive = true
        calendarButton.centerYAnchor.constraint(equalTo:view.centerYAnchor, constant: -80).isActive = true
        calendarButton.heightAnchor.constraint(equalToConstant: 100).isActive = true
        calendarButton.widthAnchor.constraint(equalToConstant: 150).isActive = true
        
    }
    
    func setUpStudyGroupButton(){
        
        // added it to the subview
        view.addSubview(studyGroupButton)
        
        // set up properties
        studyGroupButton.titleLabel?.numberOfLines = 0
        studyGroupButton.setTitle("Study \nGroup" , for: .normal)
        studyGroupButton.setTitleColor(.blue, for: .normal)
        studyGroupButton.backgroundColor = .black
        studyGroupButton.titleLabel?.font = UIFont(name: "Helvetica", size: 30)
        studyGroupButton.titleLabel?.textAlignment = .center
        
        
        // calls button function
        //findATutorButton.addTarget(self, action: #selector(findATutorAction), for: .touchUpInside)
        
        // constraints
        studyGroupButton.translatesAutoresizingMaskIntoConstraints = false
        studyGroupButton.centerXAnchor.constraint(equalTo:view.centerXAnchor, constant: 95).isActive = true
        studyGroupButton.centerYAnchor.constraint(equalTo:view.centerYAnchor, constant: 80).isActive = true
        studyGroupButton.heightAnchor.constraint(equalToConstant: 100).isActive = true
        studyGroupButton.widthAnchor.constraint(equalToConstant: 150).isActive = true
        
    }
    
    func setUpProfileButton(){
        
        // added it to the subview
        view.addSubview(profileButton)
        
        // set up properties
        profileButton.titleLabel?.numberOfLines = 0
        profileButton.setTitle("Profile \nPage" , for: .normal)
        profileButton.setTitleColor(.red, for: .normal)
        profileButton.backgroundColor = .black
        profileButton.titleLabel?.font = UIFont(name: "Helvetica", size: 30)
        profileButton.titleLabel?.textAlignment = .center
        
        
        // calls button function
        //findATutorButton.addTarget(self, action: #selector(findATutorAction), for: .touchUpInside)
        
        // constraints
        profileButton.translatesAutoresizingMaskIntoConstraints = false
        profileButton.centerXAnchor.constraint(equalTo:view.centerXAnchor, constant: -95).isActive = true
        profileButton.centerYAnchor.constraint(equalTo:view.centerYAnchor, constant: 80).isActive = true
        profileButton.heightAnchor.constraint(equalToConstant: 100).isActive = true
        profileButton.widthAnchor.constraint(equalToConstant: 150).isActive = true
        
    }
    
    func setUpSwitchToStudentButton(){
        
        // added it to the subview
        view.addSubview(switchToStudentButton)
               
        // set up properties
        switchToStudentButton.titleLabel?.numberOfLines = 0
        switchToStudentButton.setTitle("Switch To \nStudent Account", for: .normal)
        switchToStudentButton.setTitleColor(UIColor.cyan, for: .normal)
        switchToStudentButton.backgroundColor = .black
        switchToStudentButton.titleLabel?.font = UIFont(name: "Helvetica", size: 30)
        switchToStudentButton.titleLabel?.textAlignment = .center
               
               
        // calls button function
        //findATutorButton.addTarget(self, action: #selector(findATutorAction), for: .touchUpInside)
               
        // constraints
        switchToStudentButton.translatesAutoresizingMaskIntoConstraints = false
        switchToStudentButton.centerXAnchor.constraint(equalTo:view.centerXAnchor, constant: 0).isActive = true
        switchToStudentButton.centerYAnchor.constraint(equalTo:profileButton.bottomAnchor, constant: 80).isActive = true
        switchToStudentButton.heightAnchor.constraint(equalToConstant: 100).isActive = true
        switchToStudentButton.widthAnchor.constraint(equalToConstant: 250).isActive = true
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        
        
        // setting up each of the buttons so that they are printed onto the view
        setUpSettingsButton()
        setUpRequestsButton()
        setUpCalendarButton()
        setUpStudyGroupButton()
        setUpProfileButton()
        setUpProfileButton()
        setUpSwitchToStudentButton()
        setUpTitleLable()
        
        
    }
    
    
    
    
}
