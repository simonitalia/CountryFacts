//
//  DetailViewController.swift
//  Milestone6App
//
//  Created by Simon Italia on 1/8/19.
//  Copyright © 2019 SDI Group Inc. All rights reserved.
//

import UIKit
import WebKit

class DetailViewController: UIViewController {

    var wkWebView: WKWebView!
    var countryDetail: Country?
    var html: String!
    
    override func loadView() {
        wkWebView = WKWebView()
        view = wkWebView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let countryDetail = countryDetail else { return }
        
        //Configure DetailVC Nav Bar items
        title = countryDetail.name
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .action, target: self, action: #selector(shareTapped))
        
        
        html = """
        <html>
        <head>
        <meta name = "viewport" content="width=device-width, initial-scale=1">
        <style> body { font-size: 150%; } </style>
        </head>
        <strong>Captial city:</strong> \(countryDetail.capital)
        </p>
        <p>
        <strong>Spoken language/s:</strong> \(countryDetail.languages)
        </p>
        <p>
        <strong>Population size:</strong> \(countryDetail.population)
        </p>
        </html>
        """
        
        wkWebView.loadHTMLString(html, baseURL: nil)
    }
    
    //Create the shareTapped() method
    @objc func shareTapped() {
        let vc = UIActivityViewController(activityItems: [html], applicationActivities: [])
        vc.popoverPresentationController?.barButtonItem = navigationItem.rightBarButtonItem
        present(vc, animated: true)
    }
}
