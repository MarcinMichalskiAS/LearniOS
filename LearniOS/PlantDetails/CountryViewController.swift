import UIKit

class CountryViewController: UIViewController {
    let countryView = CountryView()
    let networkManager = NetworkManager()
    let countryName: String
        
    override func loadView() {
        view = countryView
    }
    
    override func viewDidLoad() {
        networkManager.getCountryDetails(countryName: countryName) { details in
            self.countryView.countryCommonNameLabel.text = details.name.common
        }
    }
    
    init(countryName: String) {
        self.countryName = countryName
        super.init(nibName: nil, bundle: nil)
 //       let flagUrl = URL(string: country.flags.png)!
 //       countryView.setCountryDetails(commonName: country.name.common, url: flagUrl)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
