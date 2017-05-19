//
//  WeatherViewController.swift
//  Trimester 1 Project
//
//  Created by Jonathan Lace on 5/17/17.
//  Copyright © 2017 SHP. All rights reserved.
//

import UIKit
import WebKit


class WeatherViewController: UIViewController, WKNavigationDelegate {
    
    var webView: WKWebView!
    
    override func viewDidLoad() {
        
        
        let webView = WKWebView(frame: CGRect(x: 0, y: 0, width: view.frame.width, height: view.frame.height))
        
        if let customUrl = URL(string: "https://www.weather.com") {
            let request = URLRequest(url: customUrl)
            webView.load(request)
        }
        
        view.addSubview(webView)
        
    }
    
}

    
  
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    

