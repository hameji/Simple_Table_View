//
//  DetailViewController.swift
//  Simple_UITalbeView
//
//  Created by Hajime Taniguchi on 2021/12/08.
//

import UIKit
import WebKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var webView: WKWebView! {
        didSet {
            webView.navigationDelegate = self
        }
    }
    
    @IBOutlet weak var progressView: UIActivityIndicatorView!
    
    var _operator: Operator!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        title = _operator.name
        guard let url = URL(string: AppResources.operatorsRef + _operator.urlString) else {
            return
        }
        let request = URLRequest(url: url)
        progressView.show()
        webView.load(request)
    }

}

extension DetailViewController: WKNavigationDelegate {
    func webView(_ webView: WKWebView, didStartProvisionalNavigation navigation: WKNavigation!) {
        progressView.show()
    }
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        progressView.dismiss()
    }
    
    func webView(_ webView: WKWebView, didFail navigation: WKNavigation!, withError error: Error) {
        progressView.show()
        let alert = UIAlertController(title: "読み込みに失敗しました", message: nil, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { [weak self] _ in
            self?.navigationController?.popViewController(animated: true)
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}
