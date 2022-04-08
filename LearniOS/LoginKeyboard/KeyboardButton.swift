import UIKit

class KeyboardButton: BaseView {
    
    var button = UIButton(type: .system)
    
    override func setupProperties() {
        
        button.heightAnchor.constraint(equalTo: button.widthAnchor, multiplier: 0.52).isActive = true
        button.backgroundColor = .white
        button.layer.cornerRadius = 8
        button.setTitle( "" , for: .normal)
        button.setTitleColor(.black, for: .normal)
        
        button.layer.shadowColor = UIColor(red: 0, green: 0, blue: 50, alpha: 0.25).cgColor
        button.layer.shadowOffset = CGSize(width: 0.0, height: 2.0)
        button.layer.shadowOpacity = 1.0
        button.layer.shadowRadius = 0.0
        button.layer.cornerRadius = 8.0
        
    }
}
