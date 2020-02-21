//
//  tutorDashboardViewController.swift
//  
//
//  Created by Daniel Gurevitch (student LM) on 2/21/20.
//

import UIKit

class tutorDashboardViewController: UIViewController {
    
    
    // creating the buttons for the dashboard that will go onto the view controller
    let settingsButton = UIButton()
    let requestsButton = UIButton()
    let calendarButton = UIButton()
    let studyGroupButton = UIButton()
    let profileButton = UIButton()
    let switchToStudentButton = UIButton()
    

    // settings button that goes onto the top left of the screen. will segueway to the settings view controller when clicked
    func setUpSettingsButton(){
        
        // added it to the subview
        view.addSubView(settingsButton)
        
        // set up the properties
        settingsButton.setTitle("Settings" , for: .normal)
        settingsButton.setTitleColor(.black, for: .normal)
        settingsButton.backgroundColor = .white
        settingsButton.titleLabel?.font = UIFont(name: "Helvetica", size 20)
        
        // constraints
        settingsButton.translatesAutoresizingMaskIntoConstraints = false
//        settingsButton.
//
//
//        button.translatesAutoresizingMaskIntoConstraints = false
//              button.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0).isActive = true
//              button.bottomAnchor.constraint(equalTo: label.topAnchor, constant: 30).isActive = true
//              button.widthAnchor.constraint(equalToConstant: 300).isActive = true
//              button.heightAnchor.constraint(equalToConstant: 300).isActive = true
              
        
        
        
    }
    
    func setUpRequestsButton(){
        
    }
    
    func setUpCalendarButton(){
        
    }
    
    func setUpStudyGroupButton(){
        
    }
    
    func setUpProfileButton(){
        
    }
    
    func setUpSwitchToStudentButton{
        
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


    }
    

  

}
