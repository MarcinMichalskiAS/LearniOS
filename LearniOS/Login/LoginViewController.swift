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

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        customView.activityIndicator.startAnimating()

        customView.sumButton.addTarget(self, action: #selector(showAlert), for: .touchUpInside)
    }

    @objc func showAlert() {
        let alert = UIAlertController(title: "Atention!", message: "Wrong Login or Password", preferredStyle: .alert)
        present(alert, animated: true, completion: nil)
    }

    let customView = LoginView()
}
