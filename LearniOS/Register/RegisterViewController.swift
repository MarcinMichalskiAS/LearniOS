import UIKit

class RegisterViewController: UIViewController {
    
    let registerView = RegisterView()
    
    override func loadView() {
        view = registerView
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        registerView.showButton.addTarget(self, action: #selector(startIndication), for: .touchUpInside)
        registerView.hideButton.addTarget(self, action: #selector(stopIndication), for: .touchUpInside)
    }
    
    @objc func startIndication() {
        registerView.indicator.startAnimating()
    }
    @objc func stopIndication() {
        registerView.indicator.stopAnimating()
    }
}
