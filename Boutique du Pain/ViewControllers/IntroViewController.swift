//
//  ViewController.swift
//  Boutique du Pain
//
//  Created by Janibek Voskanyan on 08.04.23.
//

import UIKit

class IntroViewController: UIViewController {

    private lazy var BoutiqueDuPainIcon: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "BoutiqueDuPainIcon")
        return imageView
    }()
    
    private lazy var LogoIcon: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "LogoIcon")
        return imageView
    }()
    
    private lazy var textLabel: UILabel = {
        let label = UILabel()
        label.text = "SINCE 1992"
        label.font = UIFont(name: "Inter-SemiBold", size: 13)
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor(named: "IntroBackgroundColor")
        addViews()
        addConstraints()
    }
    
    private func addViews() {
        view.addSubview(BoutiqueDuPainIcon)
        view.addSubview(LogoIcon)
        LogoIcon.addSubview(textLabel)
    }
    
    private func addConstraints() {
        BoutiqueDuPainIcon.translatesAutoresizingMaskIntoConstraints = false
        LogoIcon.translatesAutoresizingMaskIntoConstraints = false
        textLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            BoutiqueDuPainIcon.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            BoutiqueDuPainIcon.topAnchor.constraint(equalTo: view.topAnchor, constant: 347),
            
            LogoIcon.topAnchor.constraint(equalTo: BoutiqueDuPainIcon.bottomAnchor, constant: 10),
            LogoIcon.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            textLabel.centerXAnchor.constraint(equalTo: LogoIcon.centerXAnchor),
            textLabel.centerYAnchor.constraint(equalTo: LogoIcon.centerYAnchor)
            
        ])
    }
}

