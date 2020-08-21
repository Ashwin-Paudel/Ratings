//
//  SearchView.swift
//  Ratings
//
//  Created by Ashok Paudel on 2020-08-19.
//

import UIKit

class SearchView: UIViewController {

    let FeaturesLabel = UILabel()
    let searchField = UITextField()
    let stackView = UIStackView()

    override func viewDidLoad() {
        super.viewDidLoad()
        setUpView()
        // Do any additional setup after loading the view.
    }
    func setUpView() {
        setUpLabel()
        setUpStackViews()
    }
    func setUpLabel() {
        searchField.widthAnchor.constraint(equalToConstant: self.view.frame.width).isActive = true
        searchField.heightAnchor.constraint(equalToConstant: 70).isActive = true
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
    }
    func setUpStackViews() {
        //Stack View
        stackView.axis  = NSLayoutConstraint.Axis.vertical
        stackView.distribution  = UIStackView.Distribution.equalSpacing
        stackView.alignment = UIStackView.Alignment.center
        stackView.spacing   = 10.0
        stackView.addArrangedSubview(searchField)
        self.view.addSubview(stackView)
        stackView.translatesAutoresizingMaskIntoConstraints = false
        //stackView.centerXAnchor.constraint(equalTo: self.view.top).isActive = true
        stackView.topAnchor.constraint(equalTo: self.view.topAnchor).isActive = true
      //  stackView.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
    }
}
