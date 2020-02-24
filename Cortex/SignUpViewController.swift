//
//  SignUpViewController.swift
//  Cortex
//
//  Created by Omri Brenner (student LM) on 2/24/20.
//  Copyright © 2020 Daniel Rosen (student LM). All rights reserved.
//

import UIKit
import FirebaseAuth

class SignUpViewController: UIViewController {
    
    let signUpButton =  UIButton();
    let userNameTextField = UITextField();
    let emailAddressTextField = UITextField();
    let passwordTextField = UITextField();
    
    @IBAction func signUpButtonPressed(_ sender: Any) {
        
        print("pressed");
        guard let email = emailAddressTextField.text else {return};
        guard let name = userNameTextField.text else {return};
        let password = "Password$$";
        print(email);
        print(password);
        Auth.auth().createUser(withEmail: email, password: password){ user, error in
            if let _ = user {
                print("user created")
                let changeRequest = Auth.auth().currentUser?.createProfileChangeRequest()
                changeRequest?.displayName = name
                changeRequest?.commitChanges(completion: { (error) in
                    print("couldn't change name")
                })

            }
            else{
                print(error.debugDescription)
            }
        }
    }
       
       func setUpButton(){
           //add button to view
           view.addSubview(signUpButton);
           
           //set-up properties
           signUpButton.backgroundColor = UIColor.black;
           signUpButton.setTitle("Button", for: .normal);
           signUpButton.setTitleColor(.red, for: .normal);
           signUpButton.titleLabel?.font = UIFont(name: "Times", size: 40);
           signUpButton.addTarget(self, action: #selector(changeText), for: .touchUpInside);
           
           signUpButton.translatesAutoresizingMaskIntoConstraints = false;
           signUpButton.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0).isActive = true;
           signUpButton.bottomAnchor.constraint(equalTo: view.centerYAnchor, constant: 10).isActive = true;
           
           signUpButton.widthAnchor.constraint(equalToConstant: 300).isActive = true;
           signUpButton.heightAnchor.constraint(equalToConstant: 100).isActive = true;
       }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool{
        if(userNameTextField.isFirstResponder){
            emailAddressTextField.becomeFirstResponder();
        }    else if(emailAddressTextField.isFirstResponder){
            passwordTextField.becomeFirstResponder();
        }    else{
            passwordTextField.resignFirstResponder();
            signUpButton.isEnabled = true;
        }
        return true;
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
}
