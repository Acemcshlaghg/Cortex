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

    

    

    func setUpButtons(){

//        Adds all the buttons to the view

        view.addSubview(findATutorButton)

        view.addSubview(calendarButton)

        view.addSubview(profileButton)

        view.addSubview(studyGroupsButton)

//        Set up button properties

//        Find a tutor

        findATutorButton.setTitle("Find a Tutor", for: .normal)

        findATutorButton.setTitleColor(.black, for: .normal)

        findATutorButton.backgroundColor = .lightGray

        findATutorButton.titleLabel?.font = UIFont(name: "Papyrus", size: 35)

        //findATutorButton.addTarget(self, action: #selector(findATutorAction), for: .touchUpInside)

//        Calendar

        findATutorButton.setTitle("Calendar", for: .normal)

        findATutorButton.setTitleColor(.black, for: .normal)

        findATutorButton.backgroundColor = .lightGray

        findATutorButton.titleLabel?.font = UIFont(name: "Papyrus", size: 35)

     //   findATutorButton.addTarget(self, action: #selector(calendarAction), for: .touchUpInside)

//        Profile

        findATutorButton.setTitle("Profile", for: .normal)

        findATutorButton.setTitleColor(.black, for: .normal)

        findATutorButton.backgroundColor = .lightGray

        findATutorButton.titleLabel?.font = UIFont(name: "Papyrus", size: 35)

      //  findATutorButton.addTarget(self, action: #selector(profileAction), for: .touchUpInside)

//        Study Groups

        findATutorButton.setTitle("Study Groups", for: .normal)

        findATutorButton.setTitleColor(.black, for: .normal)

        findATutorButton.backgroundColor = .lightGray

        findATutorButton.titleLabel?.font = UIFont(name: "Papyrus", size: 35)

 //       findATutorButton.addTarget(self, action: #selector(studyGroupAction), for: .touchUpInside)

        

    }

    

    override func viewDidLoad() {

        super.viewDidLoad()

        setUpButtons()

        

    }

}

