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
        loadWebPage("https://blog.yagom.net/20/")
    }

    //site2 button
    @IBAction func btnGoSite2(_ sender: UIButton) {
        loadWebPage("https://daheenallwhite.github.io/ios/2019/07/17/ios-framework/")
    }

    // html button
    @IBAction func btnLoadHtmlString(_ sender: UIButton) {
        let htmlString = "<h1> HTML String </h1><p> String 변수를 이용한 웹 페이지 </p><p><a href = \"https://www.naver.com\">네이버</a>로 이동</p>"
        myWebView.loadHTMLString(htmlString, baseURL: nil)
    }

    //file button
    @IBAction func btnLoadHtmlFile(_ sender: UIButton) {


    }

    // stop button
    @IBAction func btnStop(_ sender: UIBarButtonItem) {
        myWebView.stopLoading()
    }

    // refresh button
    @IBAction func btnReload(_ sender: UIBarButtonItem) {
        myWebView.reload()
    }

    // rewind button
    @IBAction func btnGoBack(_ sender: UIBarButtonItem) {
        myWebView.goBack()
    }

    // fast-forward button
    @IBAction func btnGoForward(_ sender: UIBarButtonItem) {
        myWebView.goForward()
    }

}
