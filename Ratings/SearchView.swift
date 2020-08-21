//
//  SearchView.swift
//  Ratings
//
//  Created by Ashwin Paudel on 2020-08-19.
//

import UIKit
import WebKit

class SearchView: UIViewController {

    let searchField = UITextField()
    let searchButton = UIButton()
    let stackView = UIStackView()

    override func viewDidLoad() {
        super.viewDidLoad()
        setUpView()
        view.backgroundColor = .black
    }
    func setUpView() {
        // Search Field
        searchField.widthAnchor.constraint(equalToConstant: self.view.frame.width).isActive = true
        searchField.heightAnchor.constraint(equalToConstant: 60).isActive = true
        searchField.backgroundColor = .white
        searchField.textColor = .black
        searchField.isEnabled = true
        searchField.layer.cornerRadius = 5
        searchField.layer.borderColor = UIColor.black.cgColor
        searchField.layer.borderWidth = 5
        searchField.font = .systemFont(ofSize: 50)
        searchField.textAlignment = .center
        searchField.clearsOnBeginEditing = true
        searchField.placeholder  = "Search a product"

        // Action button
        searchButton.setTitle("Go", for: .normal)
        searchButton.backgroundColor = .green
        searchButton.widthAnchor.constraint(equalToConstant: self.view.frame.width).isActive = true
        searchButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        searchButton.addTarget(self, action: #selector(searchButtonAction), for: .touchDown)

        //Stack View
        stackView.axis  = NSLayoutConstraint.Axis.vertical
        stackView.distribution  = UIStackView.Distribution.equalSpacing
        stackView.alignment = UIStackView.Alignment.center
        stackView.spacing = 10.0
        stackView.addArrangedSubview(searchField)
        stackView.addArrangedSubview(searchButton)
        //searchButton
        self.view.addSubview(stackView)
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.topAnchor.constraint(equalTo: self.view.topAnchor).isActive = true
    }
    // @objc func
    @objc func searchButtonAction() {
        // Code for search action
        MyVariables.loadURL = "https://www.amazon.ca/s?k=\(searchField.text)"
        let features = ProductsViewController()
		features.modalPresentationStyle = .fullScreen
        present(features, animated: true, completion: nil)
    }
}
