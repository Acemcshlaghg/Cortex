//
//  HomeScreenViewController.swift
//  Cortex
//
//  Created by Daniel Rosen (student LM) on 2/21/20.
//  Copyright © 2020 Daniel Rosen (student LM). All rights reserved.
//

import UIKit


class HomeScreenViewController: UIViewController {
    
    let label = UILabel();
    let logInButton = UIButton()
    let SignUpButton = UIButton()
    

    func setUpLogInButton(){
        view.addSubview(logInButton)
        
        logInButton.setTitle("Log In", for: .normal)
        logInButton.setTitleColor(.black, for: .normal)
        logInButton.backgroundColor = .white
        logInButton.titleLabel?.font = UIFont(name: "Helvetica", size: 20)
        logInButton.addTarget(self, action: #selector(goToLogInViewController), for:.touchUpInside)
        
        // constrains
        logInButton.translatesAutoresizingMaskIntoConstraints = false
        logInButton.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0).isActive = true
        logInButton.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 200).isActive = true
        logInButton.widthAnchor.constraint(equalToConstant: 300).isActive = true
        logInButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
    }
    
    func setUpSignUpButton(){
        view.addSubview(SignUpButton)

        SignUpButton.setTitle("Sign Up", for: .normal)
        SignUpButton.setTitleColor(.black, for: .normal)
        SignUpButton.backgroundColor = .white
        SignUpButton.titleLabel?.font = UIFont(name: "Helvetica", size: 20)
        SignUpButton.addTarget(self, action: #selector(goToSignUpViewController), for:.touchUpInside)
        
        // constrains
        SignUpButton.translatesAutoresizingMaskIntoConstraints = false
        SignUpButton.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0).isActive = true
        SignUpButton.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 100).isActive = true
        SignUpButton.widthAnchor.constraint(equalToConstant: 300).isActive = true
        SignUpButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
    }
    
    
    @objc func goToLogInViewController(){
        let rvc = LogInViewController()
        let vc = UINavigationController(rootViewController: rvc)
        vc.modalPresentationStyle = .overFullScreen
        present(vc, animated: true, completion: nil)
    }
    
    @objc func goToSignUpViewController(){
        let rvc = SignUpViewController()
        let vc = UINavigationController(rootViewController: rvc)
        vc.modalPresentationStyle = .overFullScreen
        present(vc, animated: true, completion: nil)
    }
    
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        view.backgroundColor = UIColor.white;
        setUpSignUpButton()
        setUpLogInButton()
        // Do any additional setup after loading the view.
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
