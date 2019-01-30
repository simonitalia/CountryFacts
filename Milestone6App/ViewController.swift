//
//  ViewController.swift
//  Milestone6App
//
//  Created by Simon Italia on 1/8/19.
//  Copyright © 2019 SDI Group Inc. All rights reserved.
//

import UIKit

class ViewController: UITableViewController, CountryDataProtocol {
    
    //Property to receive JSON Data from delegate
    var delegate = CountryDataDelegate()
    
    //Property to store all CountryData
    var countries = [Country]()
    
    //CountryDataDelegateProtocol method
    func fetchedCountries(data: [Country]) {
        countries = data
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Navigation Controller settings
        navigationController?.navigationBar.prefersLargeTitles = true
        title = "Countries List"
        
        //Configure VC to receive JSON data
        delegate.delegate = self
        
        //Call JSON data from delegate
        delegate.getData()
        
    }//End of viewDidLoad()
    
    
    //Set number of table rows
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return countries.count
    }
    
    //Define cell data to display in table rows
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let row = countries[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "CountryCell", for: indexPath)
        cell.textLabel?.text = row.name
        return cell
    }
    
    //Handle tapping of row and passing cell/country data to DetailVC
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let detailViewController = DetailViewController()
        detailViewController.countryDetail = countries[indexPath.row]
        navigationController?.pushViewController(detailViewController, animated: true)
    }

}
