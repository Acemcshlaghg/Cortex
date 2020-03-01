//
//  DetailedTutorSearchResultsViewController.swift
//  Cortex
//
//  Created by Benjamin Warren (student LM) on 2/26/20.
//  Copyright © 2020 Daniel Rosen (student LM). All rights reserved.
//

import Foundation
import UIKit

class DetailedTutorSearchResultsViewController: UIViewController{
    
    let profilePicture = UIImageView()
    let nameLabel = UILabel()
    let classesLabel = UILabel()
    let bioLabel = UILabel()
    let contactInfoLabel = UILabel()
    
    
    func setUpLabels(){
        view.addSubview(nameLabel)
        view.addSubview(classesLabel)
        view.addSubview(bioLabel)
        view.addSubview(contactInfoLabel)
        
        //        properties
        
        //        Name
        nameLabel.text = "Mr. Swope"
        nameLabel.textColor = UIColor.black
        nameLabel.font = UIFont(name: "Helvetica", size: 25)
        
        //        Classes
        classesLabel.text = "Computer Science"
        classesLabel.textColor = UIColor.black
        classesLabel.font = UIFont(name: "Helvetica", size: 25)
        
        //        Bio
        bioLabel.text = "BIO"
        bioLabel.textColor = .black
        bioLabel.font = UIFont(name: "Helvetica", size: 25)
        
        //      Contact Info
        contactInfoLabel.text = "Phone: ______ \n Email: ______"
        contactInfoLabel.textColor = .black
        contactInfoLabel.font = UIFont(name: "Helvetica", size: 25)
        
        //        Constraints
        classesLabel.translatesAutoresizingMaskIntoConstraints = false
        bioLabel.translatesAutoresizingMaskIntoConstraints = false
        contactInfoLabel.translatesAutoresizingMaskIntoConstraints = false
        
        //        name
        nameLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 100).isActive = true
        nameLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 50).isActive = true
        nameLabel.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 150).isActive = true
        //      classes
        classesLabel.topAnchor.constraint(equalTo: nameLabel.topAnchor, constant: 100).isActive = true
        classesLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 50).isActive = true
        classesLabel.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 150).isActive = true
        //        bio
        bioLabel.topAnchor.constraint(equalTo: classesLabel.topAnchor, constant: 100).isActive = true
        bioLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 50).isActive = true
        bioLabel.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 150).isActive = true
        //    Contact Info
        contactInfoLabel.topAnchor.constraint(equalTo: bioLabel.topAnchor, constant: 400).isActive = true
        contactInfoLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 50).isActive = true
        contactInfoLabel.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 150).isActive = true
        
    }
    
    func setUpProfilePicture(){
        view.addSubview(profilePicture)
        profilePicture.translatesAutoresizingMaskIntoConstraints = false
        profilePicture.topAnchor.constraint(equalTo: view.topAnchor, constant: 100).isActive = true
        profilePicture.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpLabels()
        setUpProfilePicture()
    }
}
