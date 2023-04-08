//
//  ViewController.swift
//  Boutique du Pain
//
//  Created by Janibek Voskanyan on 08.04.23.
//

import UIKit

class IntroViewController: UIViewController {

    private lazy var LogoIcon: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "LogoIcon")
        return imageView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor(named: "IntroBackgroundColor")
        addViews()
        addConstraints()
    }
    
    private func addViews() {
        view.addSubview(LogoIcon)
    }
    
    private func addConstraints() {
        LogoIcon.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            LogoIcon.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            LogoIcon.topAnchor.constraint(equalTo: view.topAnchor, constant: 347),
            LogoIcon.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 82),
            
        ])
    }
}

