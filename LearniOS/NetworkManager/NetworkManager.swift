import UIKit

final class NetworkManager {
    func getAllCountries(completion: @escaping ([Country]) -> Void){
        let url = URL(string: "https://restcountries.com/v3.1/all")!
        let task = URLSession.shared.dataTask(with: url) { [weak self] (data, response, error) in
            guard
                let data = data,
                let parsedCountries = self?.parseCountries(for: data)
            else { return }
            DispatchQueue.main.async {
                completion(parsedCountries)
            }
        }

        task.resume()
    }
    
    func parseCountries(for data: Data) -> [Country] {
        let decoder = JSONDecoder()
        let parsed = (try? decoder.decode([Country].self, from: data)) ?? []
        return parsed
    }

    func getCountryDetails(countryName: String, completion: @escaping (CountryDetails) -> Void){
        let url = URL(string: "https://restcountries.com/v3.1/name/a".replacingOccurrences(of: " ", with: ""))!
        
        let task = URLSession.shared.dataTask(with: url) { [weak self] (data, response, error) in
            guard
                let data = data,
                let parsedCountryDetails = self?.parseCountryDetails(for: data)
            else { return }
            DispatchQueue.main.async {
                completion(parsedCountryDetails)
            }
        }
        
        task.resume()
    }
    
    func parseCountryDetails(for data: Data) -> CountryDetails? {
        let decoder = JSONDecoder()
        let parsed = (try? decoder.decode([CountryDetails].self, from: data)) ?? []
        return parsed.first
    }
}
