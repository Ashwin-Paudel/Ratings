//
//  ViewController.swift
//  Ratings
//
//  Created by Ashwin Paudel on 2020-08-19.
//

import UIKit

class ViewController: UIViewController {

	let imageView: UIImageView = UIImageView()
	let WelcomeLabel: UILabel = UILabel()
	let BottomLabel: UILabel = UILabel()
	let stackView: UIStackView = UIStackView()
	let nextButton: UIButton = UIButton()

	override func viewDidLoad() {
		super.viewDidLoad()
		setUpViews()
	}
	func setUpViews() {
		//Image View
		imageView.backgroundColor = UIColor.blue
		imageView.heightAnchor.constraint(equalToConstant: 200).isActive = true
		imageView.widthAnchor.constraint(equalToConstant: 500).isActive = true
		imageView.image =  #imageLiteral(resourceName: "starImage.jpg")

		//Welcome Label
		WelcomeLabel.widthAnchor.constraint(equalToConstant: self.view.frame.width).isActive = true
		WelcomeLabel.heightAnchor.constraint(equalToConstant: 35).isActive = true
		WelcomeLabel.text  = "⭐Welcome to Ratings⭐"
		WelcomeLabel.textColor = .black
		WelcomeLabel.font = .systemFont(ofSize: 35, weight: .semibold)
		WelcomeLabel.textAlignment = .center

		//Bottom Label
		BottomLabel.widthAnchor.constraint(equalToConstant: self.view.frame.width).isActive = true
		BottomLabel.heightAnchor.constraint(equalToConstant: 35).isActive = true
		BottomLabel.text  = "The best place to find product ratings"
		BottomLabel.textColor = .gray
		BottomLabel.font = .systemFont(ofSize: 20, weight: .semibold)
		BottomLabel.textAlignment = .center

		// Next Button
		nextButton.widthAnchor.constraint(equalToConstant: self.view.frame.width).isActive = true
		nextButton.heightAnchor.constraint(equalToConstant: 35).isActive = true
		nextButton.setTitle("Next", for: .normal)
		nextButton.backgroundColor = .red
		nextButton.layer.cornerRadius = 25
		//Stack View
		stackView.axis  = NSLayoutConstraint.Axis.vertical
		stackView.distribution  = UIStackView.Distribution.equalSpacing
		stackView.alignment = UIStackView.Alignment.center
		stackView.spacing   = 10.0

		stackView.addArrangedSubview(WelcomeLabel)
		stackView.addArrangedSubview(BottomLabel)
		stackView.addArrangedSubview(imageView)//nextButton
		stackView.addArrangedSubview(nextButton)
		stackView.translatesAutoresizingMaskIntoConstraints = false

		self.view.addSubview(stackView)
		self.view.backgroundColor = .white
		//Constraints
		stackView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
		stackView.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
	}
}
