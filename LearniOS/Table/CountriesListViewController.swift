import UIKit

class CountriesListViewController: UIViewController, UITextFieldDelegate {
    
    let countriesListView = CountriesListView()
    let networkManager = NetworkManager()
    
    override func loadView() {
        view = countriesListView
    }
    
    var countries: [Country] = []
    var filtredCountries: [Country] = [] {
        didSet {
            self.filtredCountries = filtredCountries.sorted(by: { lhs, rhs in
                return lhs.name.common < rhs.name.common
            })
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "×", style: .plain , target: self, action: #selector(closeCountriesListView))
        countriesListView.tableView.dataSource = self
        countriesListView.tableView.delegate = self
        countriesListView.tableView.register(UITableViewCell.self, forCellReuseIdentifier: "CountryCell")
        loadData()
        countriesListView.searchTextField.addTarget(self, action: #selector(textFieldDidChange(_:)), for: .editingChanged)
    }
    
    @objc func closeCountriesListView() {
        dismiss(animated: true)
    }
    
    func loadData() {
        countriesListView.indicator.startAnimating()
        networkManager.getAllCountries(completion: getCountries)
    }
    
    func getCountries(countries: [Country]) {
        self.countries = countries
        filtredCountries = countries
        countriesListView.tableView.reloadData()
        countriesListView.indicator.stopAnimating()
    }
    
    @objc func textFieldDidChange(_ textField: UITextField) {
        filterCountries(searchText: textField.text ?? "")
    }
    
    @objc func filterCountries(searchText: String) {
        if searchText.isEmpty {
            self.filtredCountries = countries
        } else {
            self.filtredCountries = countries.filter({
                $0.name.common.contains(searchText)
            })
        }
        countriesListView.tableView.reloadData()
    }
}

extension CountriesListViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return filtredCountries.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CountryCell")!
        cell.textLabel?.text = filtredCountries[indexPath.row].name.common
        return cell
    }
}

extension CountriesListViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        openPlantDetails(index: indexPath.row)
    }
    
    func openPlantDetails(index: Int) {
        let plantDetails = CountryViewController(countryName: filtredCountries[index].name.common)
        navigationController?.pushViewController(plantDetails, animated: true)
    }
}
