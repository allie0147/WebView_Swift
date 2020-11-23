//
//  ViewController.swift
//  WebView_1123
//
//  Created by Allie Kim on 2020/11/23.
//

import UIKit
import WebKit

class ViewController: UIViewController {

    // url text
    @IBOutlet weak var txtUrl: UITextField!
    // web view
    @IBOutlet weak var myWebView: WKWebView!
    // indicator(spinner)
    @IBOutlet weak var myActivityIndicator: UIActivityIndicatorView!

    override func viewDidLoad() {
        super.viewDidLoad()
        loadWebPage("http://2sam.net")
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
