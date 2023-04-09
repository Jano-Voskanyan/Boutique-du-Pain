//
//  StartViewController.swift
//  Boutique du Pain
//
//  Created by Janibek Voskanyan on 08.04.23.
//

import UIKit

class StartViewController: UIViewController {
    
    private lazy var breadIcon: UIImageView = {
        var imageView = UIImageView()
        imageView.image = UIImage(named: "breadIcon")
        return imageView
    }()
    
    private lazy var textLabelBlack: UILabel = {
        var label = UILabel()
        label.text = "The Only Bakery You’ll Love Our Bread is Tasty & Healthy"
        label.textColor = UIColor(named: "BlackTextColor")
        label.numberOfLines = 0
        label.textAlignment = .center
        label.font = UIFont(name: "Inter-SemiBold", size: 20)
        return label
    }()
    
    private lazy var textLabelGray: UILabel = {
        var label = UILabel()
        label.text = "We use MAIA made by us with water and flour without improvers."
        label.textColor = UIColor(named: "BlackTextColor")
        label.numberOfLines = 0
        label.textAlignment = .center
        label.font = UIFont(name: "Georgia", size: 14)
        return label
    }()
    
    private lazy var blackView: UIView = {
        var view = UIView()
        view.backgroundColor = UIColor(named: "IntroBackgroundColor")
        view.layer.cornerRadius = 4
        return view
    }()
    
    private lazy var textLabelContinue: UILabel = {
        var label = UILabel()
        label.text = "Continue with Email"
        label.textColor = UIColor(named: "WhiteTextColor")
        label.numberOfLines = 0
        label.textAlignment = .center
        label.font = UIFont(name: "HelveticaNeue", size: 14)
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor(named: "StartBackgroundColor")
        addViews()
        addConstraints()
    }
    
    private func addViews() {
        view.addSubview(breadIcon)
        view.addSubview(textLabelBlack)
        view.addSubview(textLabelGray)
        view.addSubview(blackView)
        blackView.addSubview(textLabelContinue)
    }
    
    private func addConstraints() {
        breadIcon.translatesAutoresizingMaskIntoConstraints = false
        textLabelBlack.translatesAutoresizingMaskIntoConstraints = false
        textLabelGray.translatesAutoresizingMaskIntoConstraints = false
        blackView.translatesAutoresizingMaskIntoConstraints = false
        textLabelContinue.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            
            breadIcon.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            breadIcon.topAnchor.constraint(equalTo: view.topAnchor, constant: 110),
            breadIcon.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 33),
            
            textLabelBlack.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            textLabelBlack.topAnchor.constraint(equalTo: breadIcon.bottomAnchor, constant: 41),
            textLabelBlack.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 50),
            
            textLabelGray.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            textLabelGray.topAnchor.constraint(equalTo: textLabelBlack.bottomAnchor, constant: 24),
            textLabelGray.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 38),

            blackView.widthAnchor.constraint(equalToConstant: 241),
            blackView.heightAnchor.constraint(equalToConstant: 40),
            blackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            blackView.topAnchor.constraint(equalTo: view.bottomAnchor, constant: -110),
            blackView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 85),
            
            textLabelContinue.topAnchor.constraint(equalTo: blackView.topAnchor, constant: 11),
            textLabelContinue.leftAnchor.constraint(equalTo: blackView.leftAnchor, constant: 55),
        ])
    }
}
