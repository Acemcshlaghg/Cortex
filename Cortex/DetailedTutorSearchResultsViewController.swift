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
        nameLabel.text = " Mr. Swope"
        nameLabel.textColor = UIColor.black
        nameLabel.font = UIFont(name: "Helvetica", size: 35)
        nameLabel.layer.borderColor = UIColor.black.cgColor
        nameLabel.layer.borderWidth = 1.0
        
        //        Classes
        classesLabel.text = " Computer Science"
        classesLabel.textColor = UIColor.black
        classesLabel.font = UIFont(name: "Helvetica", size: 25)
        classesLabel.layer.borderColor = UIColor.black.cgColor
        classesLabel.layer.borderWidth = 1.0
        
        //        Bio
        bioLabel.text = " BIO"
        bioLabel.textColor = .black
        bioLabel.font = UIFont(name: "Helvetica", size: 25)
        bioLabel.layer.borderColor = UIColor.black.cgColor
        bioLabel.layer.borderWidth = 1.0
    
        
        //      Contact Info
        contactInfoLabel.text = " Email: ______"
        contactInfoLabel.textColor = .black
        contactInfoLabel.font = UIFont(name: "Helvetica", size: 25)
        contactInfoLabel.layer.borderColor = UIColor.black.cgColor
        contactInfoLabel.layer.borderWidth = 1.0
        
        //        Constraints
        classesLabel.translatesAutoresizingMaskIntoConstraints = false
        bioLabel.translatesAutoresizingMaskIntoConstraints = false
        contactInfoLabel.translatesAutoresizingMaskIntoConstraints = false
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        
        //        name
        nameLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        nameLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -100).isActive = true
        nameLabel.heightAnchor.constraint(equalToConstant: 50).isActive = true
        nameLabel.widthAnchor.constraint(equalToConstant: 300).isActive = true
        
        
        //      classes
        classesLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        classesLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 0).isActive = true
        classesLabel.heightAnchor.constraint(equalToConstant: 50).isActive = true
        classesLabel.widthAnchor.constraint(equalToConstant: 300).isActive = true
        
        //        bio
        bioLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        bioLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 100).isActive = true
        bioLabel.widthAnchor.constraint(equalToConstant: 300).isActive = true
    
        //    Contact Info
        contactInfoLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        contactInfoLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 200).isActive = true
        contactInfoLabel.widthAnchor.constraint(equalToConstant: 300).isActive = true
        
    }
    
    func setUpProfilePicture(){
        view.addSubview(profilePicture)
        profilePicture.translatesAutoresizingMaskIntoConstraints = false
        profilePicture.topAnchor.constraint(equalTo: view.topAnchor, constant: 100).isActive = true
        profilePicture.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .gray
        setUpLabels()
        setUpProfilePicture()
    }
}
