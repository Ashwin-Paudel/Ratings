//
//  ViewController.swift
//  Ratings
//
//  Created by Ashwin Paudel on 2020-08-19.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    // MARK: - Properties
    let imageView = UIImageView()
    let WelcomeLabel = UILabel()
    let BottomLabel = UILabel()
    let stackView = UIStackView()
    let nextButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpViews()
        showAnimations()
        self.view.backgroundColor = .white
    }
    func setUpViews() {
        setUpImages()
        setUpLabels()
        setUpButtons()
        setUpStackViews()
    }
    func setUpImages() {
        imageView.backgroundColor = UIColor.blue
        imageView.heightAnchor.constraint(equalToConstant: 200).isActive = true
        imageView.widthAnchor.constraint(equalToConstant: 500).isActive = true
        imageView.image =  #imageLiteral(resourceName: "starImage.jpg")
    }
    func setUpLabels() {
        //Welcome Label
        WelcomeLabel.widthAnchor.constraint(equalToConstant: self.view.frame.width).isActive = true
        WelcomeLabel.heightAnchor.constraint(equalToConstant: 60).isActive = true
        WelcomeLabel.text  = "⭐ Welcome to Ratings ⭐"
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
    }
    func setUpButtons() {
        // Next Button
        nextButton.widthAnchor.constraint(equalToConstant: self.view.frame.width).isActive = true
        nextButton.heightAnchor.constraint(equalToConstant: 35).isActive = true
        nextButton.setTitle("Next", for: .normal)
        nextButton.backgroundColor = .red
        nextButton.layer.cornerRadius = 25
        nextButton.addTarget(self, action: #selector(self.goToFeaturesView), for: .touchDown)
    }
    func setUpStackViews() {
        //Stack View
        stackView.axis  = NSLayoutConstraint.Axis.vertical
        stackView.distribution  = UIStackView.Distribution.equalSpacing
        stackView.alignment = UIStackView.Alignment.center
        stackView.spacing   = 10.0
        stackView.addArrangedSubview(WelcomeLabel)
        stackView.addArrangedSubview(BottomLabel)
        stackView.addArrangedSubview(imageView)
        stackView.addArrangedSubview(nextButton)
        setUpShapes()
        self.view.addSubview(stackView)
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        stackView.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
    }
    
    func setUpShapes() {
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
        
        let circlePath2 = UIBezierPath(arcCenter: CGPoint(x: 125, y: 610), radius: CGFloat(20), startAngle: CGFloat(0), endAngle: CGFloat(Double.pi * 3), clockwise: true)
        let shapeLayer2 = CAShapeLayer()
        shapeLayer2.path = circlePath2.cgPath
        shapeLayer2.fillColor = UIColor.clear.cgColor
        shapeLayer2.strokeColor = UIColor.systemOrange.cgColor
        shapeLayer2.lineWidth = 3.0
        shapeLayer1.addSublayer(shapeLayer2)
    }
    func showAnimations() {
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
    @objc func goToFeaturesView() {
       present(FeaturesViewController(), animated: true, completion: nil)
        self.view.isHidden = true
    }
}
