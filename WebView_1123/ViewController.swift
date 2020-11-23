//
//  ViewController.swift
//  WebView_1123
//
//  Created by Allie Kim on 2020/11/23.
//

import UIKit
import WebKit

class ViewController: UIViewController, WKNavigationDelegate {

    // url text
    @IBOutlet weak var txtUrl: UITextField!
    // web view
    @IBOutlet weak var myWebView: WKWebView!
    // indicator(spinner)
    @IBOutlet weak var myActivityIndicator: UIActivityIndicatorView!

    override func viewDidLoad() {
        super.viewDidLoad()
        loadWebPage("http://2sam.net")
        myWebView.navigationDelegate = self
    }

    // 웹 뷰가 로딩중일때 실행되는 func이다.
    func webView(_ webView: WKWebView, didCommit navigation: WKNavigation!) {
        myActivityIndicator.startAnimating()
        myActivityIndicator.isHidden = false
    }
    
    // 웹 뷰가 로드 되었을 때 실행되는 func이다.
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        myActivityIndicator.stopAnimating()
        myActivityIndicator.isHidden = true
    }
    
    // 웹 뷰가 로딩 실패 했을 때 실행되는 func이다.
    func webView(_ webView: WKWebView, didFail navigation: WKNavigation!, withError error: Error) {
        myActivityIndicator.stopAnimating()
        myActivityIndicator.isHidden = true
        print(error.localizedDescription)
    }
    
    func loadWebPage(_ url: String) {
        let myUrl = URL(string: url)
        let myReqeust = URLRequest(url: myUrl!)
        myWebView.load(myReqeust)
    }

    // go button
    @IBAction func btnGotoUrl(_ sender: UIButton) {


    }

    //site1 button
    @IBAction func btnGoSite1(_ sender: UIButton) {

    }

    //site2 button
    @IBAction func btnGoSite2(_ sender: UIButton) {
    }

    // html button
    @IBAction func btnLoadHtmlString(_ sender: UIButton) {


    }

    //file button
    @IBAction func btnLoadHtmlFile(_ sender: UIButton) {


    }

    // stop button
    @IBAction func btnStop(_ sender: UIBarButtonItem) {


    }

    // refresh button
    @IBAction func btnReload(_ sender: UIBarButtonItem) {

    }

    // rewind button
    @IBAction func btnGoBack(_ sender: UIBarButtonItem) {

    }

    // fast-forward button
    @IBAction func btnGoForward(_ sender: UIBarButtonItem) {

    }

}
