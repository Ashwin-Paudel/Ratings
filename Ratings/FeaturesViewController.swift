//
//  FeaturesViewController.swift
//  Ratings
//
//  Created by Ashok Paudel on 2020-08-19.
//

import UIKit

class FeaturesViewController: UIViewController {

    let FeaturesLabel = UILabel()
    let stackView = UIStackView()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .red
        setUpView()
        // Do any additional setup after loading the view.
    }
    func setUpView() {
        setUpLabel()
        setUpStackViews()
    }
    func setUpLabel() {
        FeaturesLabel.widthAnchor.constraint(equalToConstant: self.view.frame.width).isActive = true
        FeaturesLabel.heightAnchor.constraint(equalToConstant: 60).isActive = true
        FeaturesLabel.text  = "Ratings has over \n 50+ product ratings"
		FeaturesLabel.numberOfLines = 2
        FeaturesLabel.textColor = .black
        FeaturesLabel.font = .systemFont(ofSize: 32, weight: .semibold)
        FeaturesLabel.textAlignment = .center
    }
    func setUpStackViews() {
        //Stack View
        stackView.axis  = NSLayoutConstraint.Axis.vertical
        stackView.distribution  = UIStackView.Distribution.equalSpacing
        stackView.alignment = UIStackView.Alignment.center
        stackView.spacing   = 10.0
        stackView.addArrangedSubview(FeaturesLabel)
        self.view.addSubview(stackView)
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        stackView.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
    }
}
