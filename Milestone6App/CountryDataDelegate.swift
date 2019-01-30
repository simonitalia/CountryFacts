//
//  CountryDataDelegate.swift
//  Milestone6App
//
//  Created by Simon Italia on 1/8/19.
//  Copyright © 2019 SDI Group Inc. All rights reserved.
//

import Foundation

class CountryDataDelegate {
    
    //Declare delegate property to store JSON data
    var delegate: CountryDataProtocol?
    
    func getData() {
        
        getLocalJSONFile()
    }
    
    //Load local JSON file "CountryData.json"
    func getLocalJSONFile() {
        
        let jsonFilePath = Bundle.main.path(forResource: "CountryData", ofType: "json")
        
        guard jsonFilePath != nil else {
            print("JSON file not found!")
            return
        }
        
        let jsonFileURL = URL(fileURLWithPath: jsonFilePath!)
        
        do {
            
            let jsonData = try Data(contentsOf: jsonFileURL)
            
            let jsonDecoder = JSONDecoder()
            let countryFacts = try jsonDecoder.decode([Country].self, from: jsonData)
            
            //Call to delegate method to pass JSON data to ViewController
            delegate?.fetchedCountries(data: countryFacts)
            
        }
        catch {
            print("Failed to create jsonDataObjectfrom jsonFileURL")
        }
    }
    
}
