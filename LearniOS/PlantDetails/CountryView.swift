import UIKit
import Kingfisher

class CountryView: BaseView {
    
    let flagPicture = UIImageView()
    let countryCommonNameLabel = UILabel()
    
    override func setupProperties() {
        backgroundColor = .white
        flagPicture.contentMode = .scaleAspectFit
    }
    
    override func setupConstraints() {
        [flagPicture, countryCommonNameLabel].forEach { view in
            addSubview(view)
            view.translatesAutoresizingMaskIntoConstraints = false
        }
        
        flagPicture.heightAnchor.constraint(equalToConstant: 300).isActive = true
        flagPicture.widthAnchor.constraint(equalToConstant: 300).isActive = true
        flagPicture.topAnchor.constraint(equalTo: countryCommonNameLabel.bottomAnchor, constant: 30).isActive = true
        flagPicture.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        
        countryCommonNameLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 30).isActive = true
        countryCommonNameLabel.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
    }
    
    func setCountryDetails(commonName: String, url: URL) {
        countryCommonNameLabel.text = commonName
        flagPicture.kf.setImage(with: url)
    }
}
