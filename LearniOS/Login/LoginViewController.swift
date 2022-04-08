import UIKit

class LoginViewController: UIViewController {
    
    let customView = LoginView()
    
    override func loadView() {
        view = customView
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Open register", style: .plain, target: self, action: #selector(openKeyboard))
        customView.openCountriesButton.addTarget(self, action: #selector(openCountriesListView), for: .touchUpInside)
    }
    
    @objc func openKeyboard() {
        let viewController = KeyboardViewController()
        navigationController?.pushViewController(viewController, animated: true)
    }
    
//    @objc func openRegister() {
//        let viewController = RegisterViewController()
//        navigationController?.pushViewController(viewController, animated: true)
//    }
    
    @objc func openCountriesListView() {
        let mainController = CountriesListViewController()
        let nVC = UINavigationController(rootViewController: mainController)
        nVC.modalPresentationStyle = .fullScreen
        self.navigationController?.present(nVC, animated: true)
    }
}
