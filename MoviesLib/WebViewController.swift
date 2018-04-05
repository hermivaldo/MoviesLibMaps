//
//  WebViewController.swift
//  MoviesLib
//
//  Created by Usuário Convidado on 04/04/18.
//  Copyright © 2018 EricBrito. All rights reserved.
//

import UIKit

class WebViewController: UIViewController {

    @IBOutlet weak var loading: UIActivityIndicatorView!
    @IBOutlet weak var webView: UIWebView!
    
    @IBAction func close(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    var url: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let webPageURL = URL(string: url)
        let request = URLRequest(url: webPageURL!)
        webView.loadRequest(request)
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func runJS(_ sender: Any) {
        webView.stringByEvaluatingJavaScript(from: "alert('ola mundoo');")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

extension WebViewController: UIWebViewDelegate {

    
    func webViewDidFinishLoad(_ webView: UIWebView) {
        loading.stopAnimating()
    }
}
