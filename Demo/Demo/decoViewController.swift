//
//  decoViewController.swift
//  Demo
//
//  Created by Fujia Ren on 12/18/18.
//  Copyright © 2018 Fujia Ren. All rights reserved.
//

import Foundation
import UIKit

class decoViewController: UIViewController {
    
    var header: UILabel!
    var desc: UILabel!
    var decoration: UIImageView!
    var demoButton: UIButton!
    var usefulButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //write your "Actual code"
        let bg = UIImageView(frame: UIScreen.main.bounds)
        bg.image = UIImage(named: "blue")
        bg.contentMode = UIView.ContentMode.scaleAspectFill
        self.view.insertSubview(bg, at: 0)
        self.navigationController?.isNavigationBarHidden = true
        
        
        header = UILabel()
        header.text = "Chinese Cookies"
        header.textColor = .white
        header.translatesAutoresizingMaskIntoConstraints = false
        header.font = UIFont(name: "Avenir-Light", size: 50)
        
        desc = UILabel()
        desc.text = "Potatoes are better unsweetened"
        desc.textColor = .white
        desc.translatesAutoresizingMaskIntoConstraints = false
        desc.font = UIFont(name: "Avenir-Light", size: 20)
        
        demoButton = UIButton(type: .roundedRect)
        demoButton.setTitle("   Pumpkins   ", for: .normal)
        demoButton.translatesAutoresizingMaskIntoConstraints = false
        demoButton.setTitleColor( .white, for: .normal)
        demoButton.layer.cornerRadius = 15
        demoButton.backgroundColor = UIColor(red: 1.0, green: 1.0, blue: 1.0, alpha: 0.2)
        demoButton.isUserInteractionEnabled = false
        demoButton.layer.borderColor = UIColor.white.cgColor
        demoButton.layer.borderWidth = 3
        demoButton.titleLabel?.font = UIFont(name: "Avenir-Light", size: 37)
        
        usefulButton = UIButton(type: .roundedRect)
        usefulButton.setTitle("   BlackPink   ", for: .normal)
        usefulButton.translatesAutoresizingMaskIntoConstraints = false
        usefulButton.setTitleColor( .white, for: .normal)
        usefulButton.isUserInteractionEnabled = true
        usefulButton.layer.cornerRadius = 15
        usefulButton.backgroundColor = UIColor(red: 1.0, green: 1.0, blue: 1.0, alpha: 0.2)
        usefulButton.layer.borderColor = UIColor.white.cgColor
        usefulButton.layer.borderWidth = 3
        usefulButton.titleLabel?.font = UIFont(name: "Avenir-Light", size: 37)
        
        //Thank you Steve.
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = demoButton.bounds
        gradientLayer.colors = [UIColor.blue.cgColor, UIColor.white.cgColor]
        demoButton.layer.insertSublayer(gradientLayer, at: 0)
        //72
        let circle = UIView(frame: CGRect(x: view.bounds.midX - 125, y: header.center.y+130, width: 250.0, height: 250.0))
        //circle.center = self.view.center
        circle.layer.cornerRadius = 125
        circle.backgroundColor = UIColor(red: 1.0, green: 1.0, blue: 1.0, alpha: 0.2)
        
        view.addSubview(header)
        view.addSubview(desc)
        view.addSubview(demoButton)
        view.addSubview(usefulButton)
        view.addSubview(circle)
        
        setupConstraints()
        
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            header.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            header.topAnchor.constraint(equalTo: view.topAnchor, constant: 207)
            ])
        NSLayoutConstraint.activate([
            desc.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            desc.topAnchor.constraint(equalTo: header.bottomAnchor, constant: 15)
            ])
        NSLayoutConstraint.activate([
            demoButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            demoButton.topAnchor.constraint(equalTo: desc.bottomAnchor, constant: 90)
            ])
        NSLayoutConstraint.activate([
            usefulButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            usefulButton.topAnchor.constraint(equalTo: demoButton.bottomAnchor, constant: 40)
            ])    }
    
}


