import UIKit

class LoginView: BaseView {
    let firstNumberTextField = UITextField()
    let secondNumberTextField = UITextField ()
    let openCountriesButton = UIButton(type: .system)
    let countryButton = UIButton(type: .system)
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

        openCountriesButton.backgroundColor = Colors.buttonOrange
        openCountriesButton.setTitle("Sign in", for: .normal)
        openCountriesButton.setTitleColor(.black, for: .normal)
        
        countryButton.backgroundColor = Colors.buttonOrange
        countryButton.setTitle("Print Country", for: .normal)
        countryButton.setTitleColor(.black, for: .normal)


        firstNumberTextField.placeholder = "Login"
        secondNumberTextField.placeholder = "Password"

        [firstNumberTextField, secondNumberTextField, openCountriesButton, countryButton].forEach { bordersAndCorners in
            bordersAndCorners.layer.cornerRadius = 8
        }

        helloLabel.font = UIFont.systemFont(ofSize: 50, weight: .bold)

        activityIndicator.color = Colors.buttonOrange

        backgroundColor = .lightGray
    }
    
    override func setupConstraints() {
        [firstNumberTextField, secondNumberTextField, openCountriesButton, helloLabel, activityIndicator, countryButton].forEach { view in
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
        
        openCountriesButton.heightAnchor.constraint(equalToConstant: 40).isActive = true
        openCountriesButton.widthAnchor.constraint(equalToConstant: 120).isActive = true
        openCountriesButton.topAnchor.constraint(equalTo: secondNumberTextField.bottomAnchor,constant: 15).isActive = true
        openCountriesButton.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        
        countryButton.heightAnchor.constraint(equalToConstant: 40).isActive = true
        countryButton.widthAnchor.constraint(equalToConstant: 120).isActive = true
        countryButton.topAnchor.constraint(equalTo: openCountriesButton.bottomAnchor,constant: 15).isActive = true
        countryButton.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true

        helloLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor,constant: 15).isActive = true
        helloLabel.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true

        activityIndicator.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        activityIndicator.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        
    }
}
