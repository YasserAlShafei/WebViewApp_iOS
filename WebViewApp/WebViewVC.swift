//
//  WebViewVC.swift
//  WebViewApp
//
//  Created by Yasser Al-ShaFei on 13/04/2022.
//

import UIKit
import WebKit



class WebViewVC: UIViewController {

    @IBOutlet weak var webview: WKWebView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        guard let url = URL(string: "https://www.apple.com") else {
            return
        }
        webview.load(URLRequest(url: url))
    }
}
