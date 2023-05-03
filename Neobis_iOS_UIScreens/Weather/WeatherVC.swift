//
//  WeatherClass.swift
//  Neobis_iOS_UIScreens
//
//  Created by Айдар Шарипов on 27/4/23.
//

import UIKit
import SnapKit

class WeatherClass : UIViewController {
    
    let sunImage: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "Ellipse 11")
        
        
        return image
    }()
    
    let sunBeamsImage: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "Ellipse 12")
        
        return image
    }()
    
    let infoView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.white.withAlphaComponent(0.2)
        view.layer.borderColor = UIColor(red: 196/255, green: 222/255, blue: 238/255, alpha: 1.0).cgColor
        view.layer.borderWidth = 0.9
        view.layer.cornerRadius = 15
        
        return view
    }()
    
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
    
    let locationImage: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "Frame")
        
        return image
    }()
    
    let arrowImage: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "opt")
        
        return image
    }()
    
    let cityLabel: UILabel = {
        let cLabel = UILabel()
        cLabel.text = "Бишкек"
        cLabel.font = .boldSystemFont(ofSize: 20)
        cLabel.textColor = .white
        cLabel.layer.shadowColor = UIColor.black.cgColor
        cLabel.layer.shadowOffset = CGSize(width: 2, height: 2)
        cLabel.layer.shadowRadius = 7
        cLabel.layer.shadowOpacity = 0.3
        
        return cLabel
    }()
    
    let notificationImage: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "Group 652")
        
        return image
    }()
    
    let dateLabel: UILabel = {
        let cLabel = UILabel()
        cLabel.text = "Сегодня, 26 Апрель"
        cLabel.font = .systemFont(ofSize: 16)
        cLabel.textColor = .white
        cLabel.layer.shadowColor = UIColor.black.cgColor
        cLabel.layer.shadowOffset = CGSize(width: 2, height: 2)
        cLabel.layer.shadowRadius = 7
        cLabel.layer.shadowOpacity = 0.3
        
        return cLabel
    }()
    
    let tempLabel: UILabel = {
        let cLabel = UILabel()
        cLabel.text = " 22°"
        cLabel.font = .systemFont(ofSize: 70)
        cLabel.textColor = .white
        cLabel.layer.shadowColor = UIColor.black.cgColor
        cLabel.layer.shadowOffset = CGSize(width: 2, height: 2)
        cLabel.layer.shadowRadius = 7
        cLabel.layer.shadowOpacity = 0.3
        
        return cLabel
    }()
    
    let clarityLabel: UILabel = {
        let cLabel = UILabel()
        cLabel.text = "Солнечно"
        cLabel.font = .systemFont(ofSize: 20)
        cLabel.textColor = .white
        cLabel.layer.shadowColor = UIColor.black.cgColor
        cLabel.layer.shadowOffset = CGSize(width: 2, height: 2)
        cLabel.layer.shadowRadius = 7
        cLabel.layer.shadowOpacity = 0.3
        
        return cLabel
    }()
    
    let middleSlash1: UILabel = {
        let cLabel = UILabel()
        cLabel.text = "|"
        cLabel.font = .systemFont(ofSize: 17)
        cLabel.textColor = .white
        cLabel.layer.shadowColor = UIColor.black.cgColor
        cLabel.layer.shadowOffset = CGSize(width: 2, height: 2)
        cLabel.layer.shadowRadius = 7
        cLabel.layer.shadowOpacity = 0.3
        
        return cLabel
    }()
    
    let middleSlash2: UILabel = {
        let cLabel = UILabel()
        cLabel.text = "|"
        cLabel.font = .systemFont(ofSize: 17)
        cLabel.textColor = .white
        cLabel.layer.shadowColor = UIColor.black.cgColor
        cLabel.layer.shadowOffset = CGSize(width: 2, height: 2)
        cLabel.layer.shadowRadius = 7
        cLabel.layer.shadowOpacity = 0.3
        
        return cLabel
    }()
    
    let windLabel: UILabel = {
        let cLabel = UILabel()
        cLabel.text = "Ветер "
        cLabel.font = .systemFont(ofSize: 17)
        cLabel.textColor = .white
        cLabel.layer.shadowColor = UIColor.black.cgColor
        cLabel.layer.shadowOffset = CGSize(width: 2, height: 2)
        cLabel.layer.shadowRadius = 7
        cLabel.layer.shadowOpacity = 0.3
        
        return cLabel
    }()
    
    let windImage: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "Ветер 1")
        image.layer.shadowColor = UIColor.black.cgColor
        image.layer.shadowOffset = CGSize(width: 2, height: 2)
        image.layer.shadowRadius = 7
        image.layer.shadowOpacity = 0.3
        
        return image
    }()
    
    let windSpeed: UILabel = {
        let cLabel = UILabel()
        cLabel.text = "15 km/h"
        cLabel.font = .systemFont(ofSize: 17)
        cLabel.textColor = .white
        cLabel.layer.shadowColor = UIColor.black.cgColor
        cLabel.layer.shadowOffset = CGSize(width: 2, height: 2)
        cLabel.layer.shadowRadius = 7
        cLabel.layer.shadowOpacity = 0.3
        
        return cLabel
    }()
    
    let rainLabel: UILabel = {
        let cLabel = UILabel()
        cLabel.text = "Дождь"
        cLabel.font = .systemFont(ofSize: 17)
        cLabel.textColor = .white
        cLabel.layer.shadowColor = UIColor.black.cgColor
        cLabel.layer.shadowOffset = CGSize(width: 2, height: 2)
        cLabel.layer.shadowRadius = 7
        cLabel.layer.shadowOpacity = 0.3
        
        return cLabel
    }()
    
    let rainDropImage: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "Дождь")
        image.layer.shadowColor = UIColor.black.cgColor
        image.layer.shadowOffset = CGSize(width: 2, height: 2)
        image.layer.shadowRadius = 7
        image.layer.shadowOpacity = 0.3
        
        return image
    }()
    
    let rainPercentage: UILabel = {
        let cLabel = UILabel()
        cLabel.text = "26%"
        cLabel.font = .systemFont(ofSize: 17)
        cLabel.textColor = .white
        cLabel.layer.shadowColor = UIColor.black.cgColor
        cLabel.layer.shadowOffset = CGSize(width: 2, height: 2)
        cLabel.layer.shadowRadius = 7
        cLabel.layer.shadowOpacity = 0.3
        
        return cLabel
    }()
    
    let arrowUpImage : UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "Vector")
        
        return image
    }()
    
    let weekInfoViewButton: UIButton = {
        let button = UIButton(type: .system)
        button.backgroundColor = .white
        button.layer.cornerRadius = 15
        button.layer.shadowColor = UIColor.black.cgColor
        button.layer.shadowOffset = CGSize(width: 0, height: 2)
        button.layer.shadowRadius = 4
        button.layer.shadowOpacity = 0.2
        button.setTitle("Прогноз на неделю ", for: .normal)
        button.tintColor = UIColor(red: 68/255, green: 78/255, blue: 114/255, alpha: 1)

        return button
    }()

    let gradientLayer = CAGradientLayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
                    
        gradientLayer.frame = view.bounds
        gradientLayer.colors = [
            UIColor(red: 71/255, green: 191/255, blue: 223/255, alpha: 1.0).cgColor,
            UIColor(red: 74/255, green: 145/255, blue: 255/255, alpha: 1.0).cgColor
        ]
        view.layer.addSublayer(gradientLayer)
        
        addToView()
        constraints()
        }
    
    func addToView(){
        view.addSubview(sunImage)
        view.addSubview(sunBeamsImage)
        view.addSubview(infoView)
        view.addSubview(trailImage1)
        view.addSubview(trailImage2)
        view.addSubview(locationImage)
        view.addSubview(cityLabel)
        view.addSubview(arrowImage)
        view.addSubview(notificationImage)
        view.addSubview(dateLabel)
        view.addSubview(tempLabel)
        view.addSubview(clarityLabel)
        view.addSubview(middleSlash1)
        view.addSubview(middleSlash2)
        view.addSubview(windLabel)
        view.addSubview(windImage)
        view.addSubview(windSpeed)
        view.addSubview(rainLabel)
        view.addSubview(rainDropImage)
        view.addSubview(rainPercentage)
        view.addSubview(weekInfoViewButton)
        view.addSubview(arrowUpImage)
        
        weekInfoViewButton.addTarget(self, action: #selector(weekInfoButtonPressed), for: .touchUpInside)
    }
    
    @objc func weekInfoButtonPressed() {
        let vc = WeekWeatherClass()
        vc.view.backgroundColor = .white
        navigationController?.pushViewController(vc, animated: true)
    }
    
    func constraints(){
        sunImage.translatesAutoresizingMaskIntoConstraints = false
        sunBeamsImage.translatesAutoresizingMaskIntoConstraints = false
        infoView.translatesAutoresizingMaskIntoConstraints = false
        trailImage1.translatesAutoresizingMaskIntoConstraints = false
        trailImage2.translatesAutoresizingMaskIntoConstraints = false
        locationImage.translatesAutoresizingMaskIntoConstraints = false
        cityLabel.translatesAutoresizingMaskIntoConstraints = false
        arrowImage.translatesAutoresizingMaskIntoConstraints = false
        notificationImage.translatesAutoresizingMaskIntoConstraints = false
        dateLabel.translatesAutoresizingMaskIntoConstraints = false
        tempLabel.translatesAutoresizingMaskIntoConstraints = false
        clarityLabel.translatesAutoresizingMaskIntoConstraints = false
        middleSlash1.translatesAutoresizingMaskIntoConstraints = false
        middleSlash2.translatesAutoresizingMaskIntoConstraints = false
        windLabel.translatesAutoresizingMaskIntoConstraints = false
        windImage.translatesAutoresizingMaskIntoConstraints = false
        windSpeed.translatesAutoresizingMaskIntoConstraints = false
        rainLabel.translatesAutoresizingMaskIntoConstraints = false
        rainDropImage.translatesAutoresizingMaskIntoConstraints = false
        rainPercentage.translatesAutoresizingMaskIntoConstraints = false
        weekInfoViewButton.translatesAutoresizingMaskIntoConstraints = false
        arrowUpImage.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            sunImage.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            sunImage.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 80),
            sunImage.widthAnchor.constraint(equalToConstant: 96),
            sunImage.heightAnchor.constraint(equalToConstant: 96),
            
            sunBeamsImage.centerXAnchor.constraint(equalTo: sunImage.centerXAnchor),
            sunBeamsImage.centerYAnchor.constraint(equalTo: sunImage.centerYAnchor),
            sunBeamsImage.widthAnchor.constraint(equalToConstant: 250),
            sunBeamsImage.heightAnchor.constraint(equalToConstant: 250),
            
            infoView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            infoView.topAnchor.constraint(equalTo: sunImage.bottomAnchor, constant: 80),
            infoView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.8),
            infoView.heightAnchor.constraint(equalTo: infoView.widthAnchor),
            infoView.widthAnchor.constraint(lessThanOrEqualToConstant: 400),
            infoView.heightAnchor.constraint(lessThanOrEqualToConstant: 400),
            
            trailImage1.topAnchor.constraint(equalTo: view.topAnchor, constant: 70),
            trailImage1.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            trailImage1.widthAnchor.constraint(lessThanOrEqualToConstant: 100),
            trailImage1.heightAnchor.constraint(lessThanOrEqualToConstant: 300),
            
            trailImage2.topAnchor.constraint(equalTo: view.topAnchor),
            trailImage2.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            trailImage2.widthAnchor.constraint(lessThanOrEqualToConstant: 500),
            trailImage2.heightAnchor.constraint(lessThanOrEqualToConstant: 300),
            
            locationImage.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            locationImage.leadingAnchor.constraint(equalTo: infoView.leadingAnchor),
            
            cityLabel.centerYAnchor.constraint(equalTo: locationImage.centerYAnchor),
            cityLabel.leadingAnchor.constraint(equalTo: locationImage.trailingAnchor, constant: 10),
            
            arrowImage.centerYAnchor.constraint(equalTo: locationImage.centerYAnchor),
            arrowImage.leadingAnchor.constraint(equalTo: cityLabel.trailingAnchor, constant: 20),
            
            notificationImage.centerYAnchor.constraint(equalTo: locationImage.centerYAnchor),
            notificationImage.trailingAnchor.constraint(equalTo: infoView.trailingAnchor),
            
            dateLabel.centerXAnchor.constraint(equalTo: infoView.centerXAnchor),
            dateLabel.topAnchor.constraint(equalTo: infoView.topAnchor, constant: 20),
            
            tempLabel.centerXAnchor.constraint(equalTo: infoView.centerXAnchor),
            tempLabel.topAnchor.constraint(equalTo: dateLabel.bottomAnchor, constant: 25),
            
            clarityLabel.centerXAnchor.constraint(equalTo: tempLabel.centerXAnchor),
            clarityLabel.topAnchor.constraint(equalTo: tempLabel.bottomAnchor, constant: 20),
            
            middleSlash1.centerXAnchor.constraint(equalTo: tempLabel.centerXAnchor),
            middleSlash1.topAnchor.constraint(equalTo: clarityLabel.bottomAnchor, constant: 30),
            
            middleSlash2.centerXAnchor.constraint(equalTo: tempLabel.centerXAnchor),
            middleSlash2.topAnchor.constraint(equalTo: middleSlash1.bottomAnchor, constant: 20),
            
            windLabel.trailingAnchor.constraint(equalTo: middleSlash1.centerXAnchor, constant: -10),
            windLabel.centerYAnchor.constraint(equalTo: middleSlash1.centerYAnchor),
            
            windImage.trailingAnchor.constraint(equalTo: windLabel.leadingAnchor, constant: -10),
            windImage.centerYAnchor.constraint(equalTo: middleSlash1.centerYAnchor),
            
            windSpeed.leadingAnchor.constraint(equalTo: middleSlash1.leadingAnchor, constant: 17),
            windSpeed.centerYAnchor.constraint(equalTo: middleSlash1.centerYAnchor),
            
            rainLabel.leadingAnchor.constraint(equalTo: windLabel.leadingAnchor),
            rainLabel.centerYAnchor.constraint(equalTo: middleSlash2.centerYAnchor),
            
            rainDropImage.centerXAnchor.constraint(equalTo: windImage.centerXAnchor),
            rainDropImage.centerYAnchor.constraint(equalTo: middleSlash2.centerYAnchor),
            
            rainPercentage.leadingAnchor.constraint(equalTo: middleSlash2.leadingAnchor, constant: 17),
            rainPercentage.centerYAnchor.constraint(equalTo: middleSlash2.centerYAnchor),
            
            weekInfoViewButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            weekInfoViewButton.topAnchor.constraint(equalTo: infoView.bottomAnchor, constant: 50),
            weekInfoViewButton.widthAnchor.constraint(equalToConstant: 230),
            weekInfoViewButton.heightAnchor.constraint(equalToConstant: 50),
            
            arrowUpImage.centerYAnchor.constraint(equalTo: weekInfoViewButton.centerYAnchor),
            arrowUpImage.trailingAnchor.constraint(equalTo: weekInfoViewButton.trailingAnchor, constant: -25),
        ])
    }
}
