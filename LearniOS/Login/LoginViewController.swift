import UIKit

class LoginViewController: UIViewController {

    let customView = LoginView()
    
    override func loadView() {
        view = customView
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        customView.sumButton.addTarget(self, action: #selector(showAlert), for: .touchUpInside)
    }

    @objc func showAlert() {
        let alert = UIAlertController(title: "Atention!", message: "Wrong Login or Password", preferredStyle: .alert)
        present(alert, animated: true, completion: nil)
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Open register", style: .plain, target: self, action: #selector(openRegister))
    }
    
    @objc func openRegister() {
        let viewController = RegisterViewController()
        navigationController?.pushViewController(viewController, animated: true)
    }
}
