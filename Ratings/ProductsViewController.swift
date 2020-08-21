//
// Created by Ashwin Paudel on 2020-08-21.
//

import UIKit
import WebKit

class ProductsViewController: UIViewController {

	let mywebView = WKWebView()

    override func viewDidLoad() {
        super.viewDidLoad()
		self.view.addSubview(mywebView)
        if let url = URL(string: "https://www.google.com/") {
            let request = URLRequest(url: url)
			mywebView.load(request)
        }
       // hideElements()
    }
//    func hideElements() {
//        let elementID = "nav-tools"
//        let removeElementIdScript = "var element = document.getElementById('\(elementID)'); element.parentElement.removeChild(element);"
//    }
}
