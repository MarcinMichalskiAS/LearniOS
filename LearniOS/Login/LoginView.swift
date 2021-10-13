import UIKit

class LoginView: BaseView {
    let firstNumberTextField = UITextField()
    let secondNumberTextField = UITextField()
    let sumButton = UIButton(type: .system)
    override func setupProperties() {
        [firstNumberTextField, secondNumberTextField].forEach { textField in
            textField.keyboardType = .numberPad
            textField.backgroundColor = .blue
        }
        sumButton.backgroundColor = .yellow
        sumButton.setTitle("SUM", for: .normal)
        sumButton.setTitle("+", for: .highlighted)
    
        backgroundColor = .gray
    }
    
    override func setupConstraints() {
        [firstNumberTextField, secondNumberTextField, sumButton].forEach { view in
            addSubview(view)
            view.translatesAutoresizingMaskIntoConstraints = false
        }
        
        firstNumberTextField.heightAnchor.constraint(equalToConstant: 80).isActive = true
        firstNumberTextField.widthAnchor.constraint(equalToConstant: 120).isActive = true
        firstNumberTextField.topAnchor.constraint(equalTo: topAnchor, constant: 80).isActive = true
        firstNumberTextField.leftAnchor.constraint(equalTo: leftAnchor, constant: 15).isActive = true
        
        secondNumberTextField.heightAnchor.constraint(equalToConstant: 80).isActive = true
        secondNumberTextField.widthAnchor.constraint(equalToConstant: 120).isActive = true
        secondNumberTextField.topAnchor.constraint(equalTo: firstNumberTextField.topAnchor).isActive = true
        secondNumberTextField.leftAnchor.constraint(equalTo: firstNumberTextField.rightAnchor, constant: 30).isActive = true
        
        sumButton.heightAnchor.constraint(equalToConstant: 80).isActive = true
        sumButton.widthAnchor.constraint(equalToConstant: 120).isActive = true
        sumButton.topAnchor.constraint(equalTo: firstNumberTextField.bottomAnchor,constant: 16).isActive = true
        sumButton.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        
        
    }
}
