//
//  ViewController.swift
//  Ratings
//
//  Created by Ashwin Paudel on 2020-08-19.
//

import UIKit

class WelcomeViewController: UIViewController {

    let imageView = UIImageView()
    // Image view to show stars

    let WelcomeLabel = UILabel()
    // The welcome to ratings label

    let BottomLabel = UILabel()
    // The slogan for the welcome label

    let stackView = UIStackView()
    // Stack-view to store all the properties

    let nextButton = UIButton()
    // The button to transition to the features view

    override func viewDidLoad() {
        super.viewDidLoad()
        setUpViews()
        self.view.backgroundColor = .white
    }
    func setUpViews() {
        imageView.backgroundColor = UIColor.blue
        imageView.heightAnchor.constraint(equalToConstant: 200).isActive = true
        imageView.widthAnchor.constraint(equalToConstant: view.frame.width).isActive = true
        imageView.image =  #imageLiteral(resourceName: "starImage.jpg")

        //Welcome Label
        WelcomeLabel.widthAnchor.constraint(equalToConstant: self.view.frame.width).isActive = true
        WelcomeLabel.heightAnchor.constraint(equalToConstant: 60).isActive = true
        WelcomeLabel.text  = "⭐ Welcome to Ratings ⭐"
        WelcomeLabel.textColor = .black
        WelcomeLabel.font = .systemFont(ofSize: 32, weight: .semibold)
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
        nextButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        nextButton.setTitle("Next", for: .normal)
        nextButton.backgroundColor = .red
        nextButton.layer.cornerRadius = 20
        nextButton.addTarget(self, action: #selector(self.transitionToNextView), for: .touchDown)

// The first circle
        let circlePath = UIBezierPath(arcCenter: CGPoint(x: 50, y: 75), radius: CGFloat(20), startAngle: CGFloat(0), endAngle: CGFloat(Double.pi * 2), clockwise: true)
        let shapeLayer = CAShapeLayer()
        shapeLayer.path = circlePath.cgPath
        shapeLayer.fillColor = UIColor.clear.cgColor
        shapeLayer.strokeColor = UIColor.red.cgColor
        shapeLayer.lineWidth = 3.0
        view.layer.addSublayer(shapeLayer)

        let circlePath1 = UIBezierPath(arcCenter: CGPoint(x: 425, y: 135), radius: CGFloat(20), startAngle: CGFloat(0), endAngle: CGFloat(Double.pi * 3), clockwise: true)
        let shapeLayer1 = CAShapeLayer()
        shapeLayer1.path = circlePath1.cgPath
        shapeLayer1.fillColor = UIColor.clear.cgColor
        shapeLayer1.strokeColor = UIColor.systemYellow.cgColor
        shapeLayer1.lineWidth = 3.0
        shapeLayer.addSublayer(shapeLayer1)

        let circlePath2 = UIBezierPath(arcCenter: CGPoint(x: 50, y: 275), radius: CGFloat(20), startAngle: CGFloat(0), endAngle: CGFloat(Double.pi * 3), clockwise: true)
        let shapeLayer2 = CAShapeLayer()
        shapeLayer2.path = circlePath2.cgPath
        shapeLayer2.fillColor = UIColor.clear.cgColor
        shapeLayer2.strokeColor = UIColor.systemOrange.cgColor
        shapeLayer2.lineWidth = 3.0
        shapeLayer1.addSublayer(shapeLayer2)



        //Stack View
        stackView.axis  = NSLayoutConstraint.Axis.vertical
        stackView.distribution  = UIStackView.Distribution.equalSpacing
        stackView.alignment = UIStackView.Alignment.center
        stackView.spacing   = 10.0
        stackView.addArrangedSubview(WelcomeLabel)
        stackView.addArrangedSubview(BottomLabel)
        stackView.addArrangedSubview(imageView)
        stackView.addArrangedSubview(nextButton)
        self.view.addSubview(stackView)
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        stackView.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true


        UIView.animate(withDuration: 1,
            delay: 0.05,
            options: .curveEaseOut,
            animations: { [weak self] in
                self?.WelcomeLabel.transform = CGAffineTransform(translationX: 0, y: -10)
                self?.BottomLabel.transform = CGAffineTransform(translationX: 0, y: -15)
                self?.nextButton.titleLabel?.font = .systemFont(ofSize: 30)

            }, completion: nil)
        UIView.animate(withDuration: 4,
            delay: 0.05,
            options: .curveEaseOut,
            animations: { [weak self] in
                self?.nextButton.titleLabel?.font = .systemFont(ofSize: 25)
            }, completion: nil)
    }
    @objc func transitionToNextView() {
        let featuresVC = SearchView()
        featuresVC.modalPresentationStyle = .fullScreen
        present(featuresVC, animated: true, completion: nil)
    }
}
