//
//  TutorSearchViewController.swift
//  Cortex
//
//  Created by Benjamin Warren (student LM) on 2/26/20.
//  Copyright © 2020 Daniel Rosen (student LM). All rights reserved.
//

import Foundation
import UIKit

class TutorSearchViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource{
    
    let titleLabel = UILabel()
    let classPicker = UIPickerView()
    let classArray = ["Math", "English", "Computer Science", "Science", "Spanish", "Latin"]
    
    func setUpLabel(){
        view.addSubview(titleLabel)
//        properties
        titleLabel.text = "Find a Tutor"
        titleLabel.textColor = UIColor.black
        titleLabel.font = UIFont(name: "Helvetica", size: 25)
        
//        constraints
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        titleLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 100).isActive = true
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        classArray.count
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        1
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        classArray[row]
    }
    
    func setUpPickerView(){
        view.addSubview(classPicker)
        classPicker.delegate = self
        classPicker.dataSource = self
        
        
//        constraints
        classPicker.translatesAutoresizingMaskIntoConstraints = false
        classPicker.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        classPicker.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 100).isActive = true
        
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .gray
        setUpLabel()
        setUpPickerView()
    }
    
}
