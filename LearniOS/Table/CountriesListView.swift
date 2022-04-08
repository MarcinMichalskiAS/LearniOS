import UIKit

class CountriesListView: BaseView {
    
    let tableView = UITableView()
    let indicator = UIActivityIndicatorView()
    let searchTextField = UISearchTextField()

    override func setupProperties() {
        backgroundColor = .white
    }
    
    override func setupConstraints() {
        [tableView, indicator, searchTextField].forEach { view in
            addSubview(view)
            view.translatesAutoresizingMaskIntoConstraints = false
        }
        
        searchTextField.heightAnchor.constraint(equalToConstant: 40).isActive = true
        searchTextField.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 5).isActive = true
        searchTextField.leftAnchor.constraint(equalTo: leftAnchor, constant: 5).isActive = true
        searchTextField.rightAnchor.constraint(equalTo: rightAnchor, constant: -5).isActive = true
        
        tableView.topAnchor.constraint(equalTo: searchTextField.bottomAnchor, constant: 5).isActive = true
        tableView.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor).isActive = true
        tableView.leftAnchor.constraint(equalTo: safeAreaLayoutGuide.leftAnchor).isActive = true
        tableView.rightAnchor.constraint(equalTo: safeAreaLayoutGuide.rightAnchor).isActive = true
        
        indicator.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        indicator.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
    }
}
