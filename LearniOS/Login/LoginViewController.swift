//
//  ViewController.swift
//  LearniOS
//
//  Created by Marcin Michalski on 08/10/2021.
//

import UIKit

class LoginViewController: UIViewController {

    override func loadView() {
        view = customView
    }
        
    let customView = LoginView()
    
    @objc func openRegister() {
        navigationController?.pushViewController(RegisterVievController(), animated: true)
        customView.backgroundColor = .red
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.leftBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(openRegister))
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Open register", style: .plain, target: self, action: #selector(openRegister))
        customView.sumButton.addTarget(self, action: #selector(sum), for: .touchUpInside)
    }
    
    @objc func sum() {
        let value1 = customView.firstNumberTextField.text ?? "0"
        let value2 = customView.secondNumberTextField.text ?? "0"
        let intValue1 = Int(value1) ?? 0
        let intValue2 = Int(value2) ?? 0
        print(intValue1 + intValue2)
    }
}

class RegisterVievController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .yellow
    }
}


