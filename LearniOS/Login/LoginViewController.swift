//
//  ViewController.swift
//  LearniOS
//
//  Created by Marcin Michalski on 08/10/2021.
//

import UIKit

class LoginViewController: UIViewController {
    
    var liczba1: Int = 1
    
    override func loadView() {
        view = customView
    }
    
    let customView = LoginView()
    
    @objc func openRegister() {
        navigationController?.pushViewController(RegisterVievController(), animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.leftBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(openRegister))
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Open register", style: .plain, target: self, action: #selector(openRegister))
        customView.backgroundColor = .red
        view.backgroundColor = .yellow
    }
    

}

class RegisterVievController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .yellow
    }
}


