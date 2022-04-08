import UIKit

class KeyboardView: BaseView {
    
    let passwordTextField = UITextField()
    let numberButton1 = KeyboardButton().button
    let numberButton2 = KeyboardButton().button
    let numberButton3 = KeyboardButton().button
    let numberButton4 = KeyboardButton().button
    let numberButton5 = KeyboardButton().button
    let numberButton6 = KeyboardButton().button
    let numberButton7 = KeyboardButton().button
    let numberButton8 = KeyboardButton().button
    let numberButton9 = KeyboardButton().button
    let numberButton0 = KeyboardButton().button
    let enterButton = KeyboardButton().button
    let cancelButton = KeyboardButton().button
    
    lazy var stackView: UIStackView = {
        let stack = UIStackView()
        stack.axis = .vertical
        stack.spacing = 10.0
        stack.alignment = .fill
        stack.distribution = .fill
        [self.passwordTextField, self.hStack, self.hStack2, self.hStack3, self.hStack4].forEach { stack.addArrangedSubview($0) }
        return stack
    }()
    
    lazy var hStack: UIStackView = {
        let stack = UIStackView()
        stack.axis = .horizontal
        stack.spacing = 5
        stack.alignment = .fill
        stack.distribution = .fillEqually
        numberButton1.setTitle("1", for: .normal)
        numberButton2.setTitle("2", for: .normal)
        numberButton3.setTitle("3", for: .normal)
        [numberButton1, numberButton2, numberButton3].forEach { stack.addArrangedSubview($0) }
        return stack
    }()
    
    lazy var hStack2: UIStackView = {
        let stack = UIStackView()
        stack.axis = .horizontal
        stack.spacing = 5
        stack.alignment = .fill
        stack.distribution = .fillEqually
        numberButton4.setTitle("4", for: .normal)
        numberButton5.setTitle("5", for: .normal)
        numberButton6.setTitle("6", for: .normal)
        [numberButton4, numberButton5, numberButton6].forEach { stack.addArrangedSubview($0) }
        return stack
    }()
    
    lazy var hStack3: UIStackView = {
        let stack = UIStackView()
        stack.axis = .horizontal
        stack.spacing = 5
        stack.alignment = .fill
        stack.distribution = .fillEqually
        numberButton7.setTitle("7", for: .normal)
        numberButton8.setTitle("8", for: .normal)
        numberButton9.setTitle("9", for: .normal)
        [numberButton7, numberButton8, numberButton9].forEach { stack.addArrangedSubview($0) }
        return stack
    }()
    
    lazy var hStack4: UIStackView = {
        let stack = UIStackView()
        stack.axis = .horizontal
        stack.spacing = 5
        stack.alignment = .fill
        stack.distribution = .fillEqually
        cancelButton.setTitle("Cancel", for: .normal)
        numberButton0.setTitle("0", for: .normal)
        enterButton.setTitle("OK", for: .normal)
        [cancelButton, numberButton0, enterButton].forEach { stack.addArrangedSubview($0) }
        return stack
    }()
    
    override func setupProperties() {
        
        backgroundColor = .lightGray
        
        passwordTextField.placeholder = "Password"
        passwordTextField.backgroundColor = .white
        passwordTextField.layer.cornerRadius = 8
        passwordTextField.isSecureTextEntry = true
        passwordTextField.isUserInteractionEnabled = false

    }
    
    override func setupConstraints() {
        [stackView].forEach { view in
            addSubview(view)
            view.translatesAutoresizingMaskIntoConstraints = false
        }
        
        passwordTextField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: passwordTextField.frame.height))
        passwordTextField.leftViewMode = .always
        passwordTextField.heightAnchor.constraint(equalTo: passwordTextField.widthAnchor, multiplier: 0.15).isActive = true
        
        stackView.leftAnchor.constraint(equalTo: leftAnchor, constant: 40).isActive = true
        stackView.rightAnchor.constraint(equalTo: rightAnchor, constant: -40).isActive = true
        stackView.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
    }
}
