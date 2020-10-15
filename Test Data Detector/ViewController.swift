//
//  ViewController.swift
//  Test Data Detector
//
//  Created by Iris Li on 2020/9/28.
//

import UIKit
import WebKit

class ViewController: UIViewController {
    private let webView: WKWebView = {
        let configuration = WKWebViewConfiguration()
        configuration.dataDetectorTypes = .all
        let preferences = WKPreferences()
        preferences.javaScriptEnabled = true
        configuration.preferences = preferences
        let webView = WKWebView(frame: .zero, configuration: configuration)
        return webView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        self.view.addSubview(webView)
        if let indexURL = Bundle.main.url(forResource: "dataDetector", withExtension: "html") {
            self.webView.loadFileURL(indexURL, allowingReadAccessTo: indexURL)
        }
        webView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            webView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            webView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            webView.topAnchor.constraint(equalTo: view.topAnchor),
            webView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
        ])
    }


}

