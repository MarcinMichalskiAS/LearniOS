import UIKit

class KeyboardViewController: UIViewController {
    
    let keyboardView = KeyboardView()
    
    override func loadView() {
        view = keyboardView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        keyboardView.numberButton1.addTarget(self, action: #selector(putNumber), for: .touchUpInside)
        keyboardView.numberButton2.addTarget(self, action: #selector(putNumber), for: .touchUpInside)
        keyboardView.numberButton3.addTarget(self, action: #selector(putNumber), for: .touchUpInside)
        keyboardView.numberButton4.addTarget(self, action: #selector(putNumber), for: .touchUpInside)
        keyboardView.numberButton5.addTarget(self, action: #selector(putNumber), for: .touchUpInside)
        keyboardView.numberButton6.addTarget(self, action: #selector(putNumber), for: .touchUpInside)
        keyboardView.numberButton7.addTarget(self, action: #selector(putNumber), for: .touchUpInside)
        keyboardView.numberButton8.addTarget(self, action: #selector(putNumber), for: .touchUpInside)
        keyboardView.numberButton9.addTarget(self, action: #selector(putNumber), for: .touchUpInside)
        keyboardView.numberButton0.addTarget(self, action: #selector(putNumber), for: .touchUpInside)
        keyboardView.cancelButton.addTarget(self, action: #selector(clearPasswordTextField), for: .touchUpInside)

    }
    
    @objc func putNumber(button: UIButton) {
        
        keyboardView.cancelButton.setTitle("Clear", for: .normal)
        
        let text = keyboardView.passwordTextField.text!
        
        switch (button) {
        case keyboardView.numberButton1: keyboardView.passwordTextField.text = text + "1"
            print("1")
        case keyboardView.numberButton2: keyboardView.passwordTextField.text = text + "2"
            print("2")
        case keyboardView.numberButton3: keyboardView.passwordTextField.text = text + "3"
            print("3")
        case keyboardView.numberButton4: keyboardView.passwordTextField.text = text + "4"
            print("4")
        case keyboardView.numberButton5: keyboardView.passwordTextField.text = text + "5"
            print("5")
        case keyboardView.numberButton6: keyboardView.passwordTextField.text = text + "6"
            print("6")
        case keyboardView.numberButton7: keyboardView.passwordTextField.text = text + "7"
            print("7")
        case keyboardView.numberButton8: keyboardView.passwordTextField.text = text + "8"
            print("8")
        case keyboardView.numberButton9: keyboardView.passwordTextField.text = text + "9"
            print("9")
        case keyboardView.numberButton0: keyboardView.passwordTextField.text = text + "0"
            print("0")
        default: return
        }
    }
    
    @objc func clearPasswordTextField() {
        
        keyboardView.cancelButton.setTitle("Cancel", for: .normal)
        keyboardView.passwordTextField.text = ""
        
    }
}
