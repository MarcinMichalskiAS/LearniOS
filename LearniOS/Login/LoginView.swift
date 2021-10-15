import UIKit

class LoginView: BaseView {
    let firstNumberTextField = UITextField()
    let secondNumberTextField = UITextField()
    let sumButton = UIButton(type: .system)
    let helloLabel = UILabel()
    let activityIndicator = UIActivityIndicatorView()
    override func setupProperties() {
        [firstNumberTextField, secondNumberTextField].forEach { textField in
            textField.keyboardType = .default
            textField.backgroundColor = .white
            textField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: textField.frame.height))
            textField.leftViewMode = .always
        }

        helloLabel.text = "Hello"

        sumButton.backgroundColor = Colors.buttonOrange
        sumButton.setTitle("Sign in", for: .normal)
        sumButton.setTitleColor(.black, for: .normal)

        firstNumberTextField.placeholder = "Login"
        secondNumberTextField.placeholder = "Password"

        [firstNumberTextField, secondNumberTextField, sumButton].forEach { bordersAndCorners in
            bordersAndCorners.layer.cornerRadius = 8
        }

        helloLabel.font = UIFont.systemFont(ofSize: 50, weight: .bold)

        activityIndicator.color = Colors.buttonOrange

        backgroundColor = .lightGray
    }
    
    override func setupConstraints() {
        [firstNumberTextField, secondNumberTextField, sumButton, helloLabel, activityIndicator].forEach { view in
            addSubview(view)
            view.translatesAutoresizingMaskIntoConstraints = false
        }
        
        firstNumberTextField.heightAnchor.constraint(equalToConstant: 40).isActive = true
        firstNumberTextField.widthAnchor.constraint(equalToConstant: 240).isActive = true
        firstNumberTextField.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 100).isActive = true
        firstNumberTextField.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        
        secondNumberTextField.heightAnchor.constraint(equalToConstant: 40).isActive = true
        secondNumberTextField.widthAnchor.constraint(equalToConstant: 240).isActive = true
        secondNumberTextField.topAnchor.constraint(equalTo: firstNumberTextField.bottomAnchor, constant: 15).isActive = true
        secondNumberTextField.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        
        sumButton.heightAnchor.constraint(equalToConstant: 40).isActive = true
        sumButton.widthAnchor.constraint(equalToConstant: 120).isActive = true
        sumButton.topAnchor.constraint(equalTo: secondNumberTextField.bottomAnchor,constant: 15).isActive = true
        sumButton.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true

        helloLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor,constant: 15).isActive = true
        helloLabel.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true

        activityIndicator.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        activityIndicator.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        
    }
}
