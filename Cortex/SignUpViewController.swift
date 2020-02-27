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
    
    func setUpTextFields(){
        view.addSubview(userNameTextField);
        userNameTextField.translatesAutoresizingMaskIntoConstraints = false;
        userNameTextField.backgroundColor = .white;
        userNameTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0).isActive = true;
        userNameTextField.topAnchor.constraint(equalTo: view.topAnchor, constant: 200).isActive = true;
        userNameTextField.widthAnchor.constraint(equalToConstant: 200).isActive = true;
        userNameTextField.heightAnchor.constraint(equalToConstant: 30).isActive = true;
        userNameTextField.borderStyle = UITextField.BorderStyle.roundedRect
        userNameTextField.placeholder = "Username";
        
        view.addSubview(emailAddressTextField);
        emailAddressTextField.translatesAutoresizingMaskIntoConstraints = false;
        emailAddressTextField.backgroundColor = .white;
        emailAddressTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0).isActive = true;
        emailAddressTextField.centerYAnchor.constraint(equalTo: userNameTextField.bottomAnchor, constant: 100).isActive = true;
        emailAddressTextField.widthAnchor.constraint(equalToConstant: 200).isActive = true;
        emailAddressTextField.heightAnchor.constraint(equalToConstant: 30).isActive = true;
        emailAddressTextField.borderStyle = UITextField.BorderStyle.roundedRect
        emailAddressTextField.placeholder = "Email";
        
        view.addSubview(passwordTextField);
        passwordTextField.translatesAutoresizingMaskIntoConstraints = false;
        passwordTextField.backgroundColor = .white;
        passwordTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0).isActive = true;
        passwordTextField.topAnchor.constraint(equalTo: emailAddressTextField.bottomAnchor, constant: 100).isActive = true;
        passwordTextField.widthAnchor.constraint(equalToConstant: 200).isActive = true;
        passwordTextField.heightAnchor.constraint(equalToConstant: 30).isActive = true;
        passwordTextField.borderStyle = UITextField.BorderStyle.roundedRect
        passwordTextField.placeholder = "Password";

    }
    
    func setUpButton(){
              //add button to view
              view.addSubview(signUpButton);
              
              //set-up properties
              signUpButton.backgroundColor = UIColor.blue;
              signUpButton.setTitle("Sign Up", for: .normal);
              signUpButton.setTitleColor(.white, for: .normal);
              signUpButton.titleLabel?.font = UIFont(name: "Times", size: 40);
              signUpButton.addTarget(self, action: #selector(signUpButtonPressed), for: .touchUpInside);
              signUpButton.translatesAutoresizingMaskIntoConstraints = false;
              signUpButton.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0).isActive = true;
              signUpButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -10).isActive = true;
              signUpButton.widthAnchor.constraint(equalToConstant: 300).isActive = true;
              signUpButton.heightAnchor.constraint(equalToConstant: 100).isActive = true;
          }
    @objc func signUpButtonPressed(_ sender: Any) {
        
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
        view.backgroundColor = .purple;
        setUpButton();
        setUpTextFields();
        // Do any additional setup after loading the view.
    }
    
}
