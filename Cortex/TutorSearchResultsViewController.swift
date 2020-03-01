//
//  TutorSearchResultsViewController.swift
//  Cortex
//
//  Created by Benjamin Warren (student LM) on 2/26/20.
//  Copyright © 2020 Daniel Rosen (student LM). All rights reserved.
//

import Foundation
import UIKit


class TutorSearchResultsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    let titleLabel = UILabel()
    let results = ["Daniel", "Omri", "Ben", "Danny"]
    let tableView = UITableView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpTitleLabel()
        setUpTableView()
        // set a background color so we can easily see the table
        view.backgroundColor = .gray
    }
    
    // Note: because this is NOT a subclassed UITableViewController,
    // DataSource and Delegate functions are NOT overridden
    
    // MARK: - Table view data source
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return results.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        cell.textLabel?.text = results[indexPath.row]
        cell.backgroundColor = .gray
        
        return cell
    }
    
    // MARK: - Table view delegate
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // etc
    }
    
    func setUpTableView(){
        view.addSubview(tableView)
//        properties
        tableView.backgroundColor = .gray
        tableView.rowHeight = 100
        
//        constraints
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        tableView.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 100).isActive = true
        tableView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        
        // set delegate and datasource
        tableView.delegate = self
        tableView.dataSource = self
        
        // register a default cell
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
    }
    
    func setUpTitleLabel(){
        view.addSubview(titleLabel)
        
        //        properties
        titleLabel.text = "\(results.count) Results"
        titleLabel.textColor = UIColor.black
        titleLabel.font = UIFont(name: "Helvetica", size: 25)
        
        //        constraints
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        titleLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 100).isActive = true
    }
}


