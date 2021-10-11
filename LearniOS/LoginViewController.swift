//
//  ViewController.swift
//  LearniOS
//
//  Created by Marcin Michalski on 08/10/2021.
//

import UIKit

class LoginViewController: UIViewController {
    
    @objc func addTapped() {
        navigationController?.pushViewController(RegisterVievController(), animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.leftBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(addTapped))
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Add", style: .plain, target: self, action: #selector(addTapped))
        view.backgroundColor = .cyan
    }
}

class RegisterVievController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .yellow
    }
}


