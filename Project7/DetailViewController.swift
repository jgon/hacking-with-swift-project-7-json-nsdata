//
//  DetailViewController.swift
//  Project7
//
//  Created by Jacques on 10/02/16.
//  Copyright © 2016 J4SOFT. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var detailDescriptionLabel: UILabel!

    var webView: UIWebView!
    var detailItem: [String: String]!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard detailItem != nil
            else { return }
        
        if let body = detailItem["body"] {
            var html = "<html>"
            html += "<head>"
            html += "<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">"
            html += "<style> body { font-size: 150%; } </style>"
            html += "</head>"
            html += "<body>"
            html += body
            html += "</body>"
            html += "</html>"
            webView.loadHTMLString(html, baseURL: nil)
        }
    }
    
    override func loadView() {
        webView = UIWebView()
        view = webView
    }
}

