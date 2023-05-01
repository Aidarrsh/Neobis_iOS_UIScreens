//
//  WeekWetherVC.swift
//  Neobis_iOS_UIScreens
//
//  Created by Айдар Шарипов on 1/5/23.
//

import Foundation
import UIKit

class WeekWeatherClass : UIViewController {
    
    let trailImage1: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "Vector 12")
        
        return image
    }()
    
    let trailImage2: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "Vector 11")
        
        return image
    }()
    
    let settingsImage: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(systemName: "gearshape")
        image.tintColor = .white
        
        return image
    }()
    
    let dayLabel: UILabel = {
        let cLabel = UILabel()
        cLabel.text = "Сегодня"
        cLabel.font = .systemFont(ofSize: 25)
        cLabel.textColor = .white
        cLabel.layer.shadowColor = UIColor.black.cgColor
        cLabel.layer.shadowOffset = CGSize(width: 2, height: 2)
        cLabel.layer.shadowRadius = 7
        cLabel.layer.shadowOpacity = 0.3
        
        return cLabel
    }()
    
    let dateLabel: UILabel = {
        let cLabel = UILabel()
        cLabel.text = "Апр, 26"
        cLabel.font = .systemFont(ofSize: 17)
        cLabel.textColor = .white
        cLabel.layer.shadowColor = UIColor.black.cgColor
        cLabel.layer.shadowOffset = CGSize(width: 2, height: 2)
        cLabel.layer.shadowRadius = 7
        cLabel.layer.shadowOpacity = 0.3
        
        return cLabel
    }()
    
    let view1: UIView = {
        let view = UIView()
        let cLabel = UILabel()
        view.addSubview(cLabel)
        
        cLabel.text = " 29°C"
        cLabel.font = .systemFont(ofSize: 20)
        cLabel.textColor = .white
        cLabel.layer.shadowColor = UIColor.black.cgColor
        cLabel.layer.shadowOffset = CGSize(width: 2, height: 2)
        cLabel.layer.shadowRadius = 7
        cLabel.layer.shadowOpacity = 0.3
        
        cLabel.translatesAutoresizingMaskIntoConstraints = false
        cLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        cLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 12).isActive = true
        
        return view
    }()
    
    let view2: UIView = {
        let view = UIView()
        let cLabel = UILabel()
        view.addSubview(cLabel)
        
        cLabel.text = " 26°C"
        cLabel.font = .systemFont(ofSize: 20)
        cLabel.textColor = .white
        cLabel.layer.shadowColor = UIColor.black.cgColor
        cLabel.layer.shadowOffset = CGSize(width: 2, height: 2)
        cLabel.layer.shadowRadius = 7
        cLabel.layer.shadowOpacity = 0.3
        
        cLabel.translatesAutoresizingMaskIntoConstraints = false
        cLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        cLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 12).isActive = true
        
        return view
    }()
    
    let view3: UIView = {
        let view = UIView()
        let cLabel = UILabel()
        view.addSubview(cLabel)
        
        cLabel.text = " 24°C"
        cLabel.font = .systemFont(ofSize: 20)
        cLabel.textColor = .white
        cLabel.layer.shadowColor = UIColor.black.cgColor
        cLabel.layer.shadowOffset = CGSize(width: 2, height: 2)
        cLabel.layer.shadowRadius = 7
        cLabel.layer.shadowOpacity = 0.3
        
        cLabel.translatesAutoresizingMaskIntoConstraints = false
        cLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        cLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 12).isActive = true
        
        view.backgroundColor = UIColor.white.withAlphaComponent(0.2)
        view.layer.borderColor = UIColor(red: 196/255, green: 222/255, blue: 238/255, alpha: 1.0).cgColor
        view.layer.borderWidth = 0.9
        view.layer.cornerRadius = 20
        
        return view
    }()
    
    let view4: UIView = {
        let view = UIView()
        let cLabel = UILabel()
        view.addSubview(cLabel)
        
        cLabel.text = " 23°C"
        cLabel.font = .systemFont(ofSize: 20)
        cLabel.textColor = .white
        cLabel.layer.shadowColor = UIColor.black.cgColor
        cLabel.layer.shadowOffset = CGSize(width: 2, height: 2)
        cLabel.layer.shadowRadius = 7
        cLabel.layer.shadowOpacity = 0.3
        
        cLabel.translatesAutoresizingMaskIntoConstraints = false
        cLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        cLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 12).isActive = true
        
        return view
    }()
    
    let view5: UIView = {
        let view = UIView()
        let cLabel = UILabel()
        view.addSubview(cLabel)
        
        cLabel.text = " 22°C"
        cLabel.font = .systemFont(ofSize: 20)
        cLabel.textColor = .white
        cLabel.layer.shadowColor = UIColor.black.cgColor
        cLabel.layer.shadowOffset = CGSize(width: 2, height: 2)
        cLabel.layer.shadowRadius = 7
        cLabel.layer.shadowOpacity = 0.3
        
        cLabel.translatesAutoresizingMaskIntoConstraints = false
        cLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        cLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 12).isActive = true
        
        return view
    }()
    
    let stackView = UIStackView()
    
    let gradientLayer = CAGradientLayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        gradientLayer.frame = view.bounds
        gradientLayer.colors = [
            UIColor(red: 71/255, green: 191/255, blue: 223/255, alpha: 1.0).cgColor,
            UIColor(red: 74/255, green: 145/255, blue: 255/255, alpha: 1.0).cgColor
        ]
        view.layer.addSublayer(gradientLayer)
        
        createStackView()
        addToView()
        constraints()
    }
    
    func createStackView(){
        stackView.addArrangedSubview(view1)
        stackView.addArrangedSubview(view2)
        stackView.addArrangedSubview(view3)
        stackView.addArrangedSubview(view4)
        stackView.addArrangedSubview(view5)
        stackView.distribution = .fillEqually
        stackView.axis = .horizontal
        stackView.spacing = 7
        
        view.addSubview(stackView)
    }
    
    func addToView(){
        view.addSubview(trailImage1)
        view.addSubview(trailImage2)
        view.addSubview(settingsImage)
        view.addSubview(dayLabel)
        view.addSubview(dateLabel)
    }
    
    func constraints(){
        
        trailImage1.translatesAutoresizingMaskIntoConstraints = false
        trailImage2.translatesAutoresizingMaskIntoConstraints = false
        settingsImage.translatesAutoresizingMaskIntoConstraints = false
        dayLabel.translatesAutoresizingMaskIntoConstraints = false
        dateLabel.translatesAutoresizingMaskIntoConstraints = false
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            trailImage1.topAnchor.constraint(equalTo: view.topAnchor, constant: 70),
            trailImage1.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            trailImage1.widthAnchor.constraint(lessThanOrEqualToConstant: 100),
            trailImage1.heightAnchor.constraint(lessThanOrEqualToConstant: 300),
            
            trailImage2.topAnchor.constraint(equalTo: view.topAnchor),
            trailImage2.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            trailImage2.widthAnchor.constraint(lessThanOrEqualToConstant: 500),
            trailImage2.heightAnchor.constraint(lessThanOrEqualToConstant: 300),
            
            settingsImage.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            settingsImage.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            
            dayLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            dayLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 40),
            
            dateLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            dateLabel.bottomAnchor.constraint(equalTo: dayLabel.bottomAnchor),
            
            stackView.topAnchor.constraint(equalTo: dayLabel.bottomAnchor, constant: 40),
            stackView.heightAnchor.constraint(equalToConstant: 170),
            stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        ])
    }
}
