import UIKit

class RegisterView: BaseView {
    
    let hideButton = UIButton()
    let showButton = UIButton()
    let indicator = UIActivityIndicatorView()
    
    override func setupProperties() {
        backgroundColor = .lightGray
        [hideButton, showButton].forEach { buttons in
            buttons.setTitleColor(.black, for: .normal)
            buttons.layer.cornerRadius = 8
            }
        showButton.backgroundColor = .green
        showButton.setTitle("Show indicator", for: .normal)
        hideButton.backgroundColor = .red
        hideButton.setTitle("Hide indicator", for: .normal)
        indicator.color = Colors.buttonOrange
    }
    
    override func setupConstraints() {
        [hideButton, showButton, indicator].forEach { view in
            addSubview(view)
            view.translatesAutoresizingMaskIntoConstraints = false
        }
        
        showButton.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 30).isActive = true
        showButton.heightAnchor.constraint(equalToConstant: 60).isActive = true
        showButton.widthAnchor.constraint(equalToConstant: 140).isActive = true
        showButton.rightAnchor.constraint(equalTo: centerXAnchor, constant: -10).isActive = true
       
        hideButton.leftAnchor.constraint(equalTo: centerXAnchor, constant: 10).isActive = true
        hideButton.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 30).isActive = true
        hideButton.heightAnchor.constraint(equalToConstant: 60).isActive = true
        hideButton.widthAnchor.constraint(equalToConstant: 140).isActive = true
        
        indicator.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        indicator.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        }
}
