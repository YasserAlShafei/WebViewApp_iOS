//
//  SafariVC.swift
//  WebViewApp
//
//  Created by Yasser Al-ShaFei on 13/04/2022.
//

import UIKit
import SafariServices



class SafariVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func goToSafari(_ sender: Any){
        guard let url = URL(string: "https://www.apple.com") else {
            return
        }
        
        let vc = SFSafariViewController(url: URL(string: "https://www.apple.com")!)
        present(vc, animated: true)
    }
}
