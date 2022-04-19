//
//  ViewController.swift
//  WebViewApp
//
//  Created by Yasser Al-ShaFei on 13/04/2022.
//

import UIKit
import WebKit



class ViewController: UIViewController {

    let webview: WKWebView = {
        let prefs = WKWebpagePreferences()
        prefs.allowsContentJavaScript = true
        let configuration = WKWebViewConfiguration()
        configuration.defaultWebpagePreferences = prefs
        let webview = WKWebView(frame: .zero, configuration: configuration)
        return webview
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(webview)
        
        guard let url = URL(string: "https://developers.google.com/admob/ios/native/start?hl=en") else {
            return
        }
        webview.load(URLRequest(url: url))
        
        webview.customUserAgent = "iPad/Chrome/SomethingRandom"
        
        DispatchQueue.main.asyncAfter(deadline: .now()+5) {
            self.webview.evaluateJavaScript("document.body.innerHTML") { result, error in
                guard let html = result as? String, error == nil else{ return }
                print("===> \(html)")
            }
        }
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        webview.frame = view.bounds
    }
}

