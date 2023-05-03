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
        image.image = UIImage(named: "настройки")
        
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
        let timeLabel = UILabel()
        let image = UIImageView()
        
        view.addSubview(timeLabel)
        view.addSubview(cLabel)
        view.addSubview(image)
        
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
        
        image.translatesAutoresizingMaskIntoConstraints = false
        image.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        image.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
//        image.heightAnchor.constraint(equalToConstant: 25).isActive = true
//        image.widthAnchor.constraint(equalToConstant: 30).isActive = true
        
        image.image = UIImage(named: "Солнечно")
        
        timeLabel.text = "15.00"
        timeLabel.font = .systemFont(ofSize: 16)
        timeLabel.textColor = .white
        timeLabel.layer.shadowColor = UIColor.black.cgColor
        timeLabel.layer.shadowOffset = CGSize(width: 2, height: 2)
        timeLabel.layer.shadowRadius = 7
        timeLabel.layer.shadowOpacity = 0.3
        
        timeLabel.translatesAutoresizingMaskIntoConstraints = false
        timeLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        timeLabel.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -12).isActive = true
        
        return view
    }()
    
    let view2: UIView = {
        let view = UIView()
        let cLabel = UILabel()
        let timeLabel = UILabel()
        let image = UIImageView()
        
        view.addSubview(timeLabel)
        view.addSubview(image)
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
        
        image.translatesAutoresizingMaskIntoConstraints = false
        image.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        image.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
//        image.heightAnchor.constraint(equalToConstant: 25).isActive = true
//        image.widthAnchor.constraint(equalToConstant: 30).isActive = true
        
        image.image = UIImage(named: "Солнечно")
        image.tintColor = .white
        
        timeLabel.text = "16.00"
        timeLabel.font = .systemFont(ofSize: 16)
        timeLabel.textColor = .white
        timeLabel.layer.shadowColor = UIColor.black.cgColor
        timeLabel.layer.shadowOffset = CGSize(width: 2, height: 2)
        timeLabel.layer.shadowRadius = 7
        timeLabel.layer.shadowOpacity = 0.3
        
        timeLabel.translatesAutoresizingMaskIntoConstraints = false
        timeLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        timeLabel.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -12).isActive = true
        
        return view
    }()
    
    let view3: UIView = {
        let view = UIView()
        let cLabel = UILabel()
        let timeLabel = UILabel()
        let image = UIImageView()
        
        view.addSubview(timeLabel)
        view.addSubview(image)
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
        
        image.translatesAutoresizingMaskIntoConstraints = false
        image.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        image.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
//        image.heightAnchor.constraint(equalToConstant: 25).isActive = true
//        image.widthAnchor.constraint(equalToConstant: 30).isActive = true
        
        image.image = UIImage(named: "Облачно")
        image.tintColor = .white
        
        view.backgroundColor = UIColor.white.withAlphaComponent(0.2)
        view.layer.borderColor = UIColor(red: 196/255, green: 222/255, blue: 238/255, alpha: 1.0).cgColor
        view.layer.borderWidth = 0.9
        view.layer.cornerRadius = 20
        
        timeLabel.text = "17.00"
        timeLabel.font = .systemFont(ofSize: 16)
        timeLabel.textColor = .white
        timeLabel.layer.shadowColor = UIColor.black.cgColor
        timeLabel.layer.shadowOffset = CGSize(width: 2, height: 2)
        timeLabel.layer.shadowRadius = 7
        timeLabel.layer.shadowOpacity = 0.3
        
        timeLabel.translatesAutoresizingMaskIntoConstraints = false
        timeLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        timeLabel.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -12).isActive = true
        
        return view
    }()
    
    let view4: UIView = {
        let view = UIView()
        let cLabel = UILabel()
        let timeLabel = UILabel()
        let image = UIImageView()
        
        view.addSubview(timeLabel)
        view.addSubview(image)
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
        
        image.translatesAutoresizingMaskIntoConstraints = false
        image.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        image.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
//        image.heightAnchor.constraint(equalToConstant: 25).isActive = true
//        image.widthAnchor.constraint(equalToConstant: 30).isActive = true
        
        image.image = UIImage(named: "Солнечно облачно")
        image.tintColor = .white
        
        timeLabel.text = "18.00"
        timeLabel.font = .systemFont(ofSize: 16)
        timeLabel.textColor = .white
        timeLabel.layer.shadowColor = UIColor.black.cgColor
        timeLabel.layer.shadowOffset = CGSize(width: 2, height: 2)
        timeLabel.layer.shadowRadius = 7
        timeLabel.layer.shadowOpacity = 0.3
        
        timeLabel.translatesAutoresizingMaskIntoConstraints = false
        timeLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        timeLabel.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -12).isActive = true
        
        return view
    }()
    
    let view5: UIView = {
        let view = UIView()
        let cLabel = UILabel()
        let timeLabel = UILabel()
        let image = UIImageView()
        
        view.addSubview(timeLabel)
        view.addSubview(image)
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
        
        image.translatesAutoresizingMaskIntoConstraints = false
        image.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        image.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
//        image.heightAnchor.constraint(equalToConstant: 25).isActive = true
//        image.widthAnchor.constraint(equalToConstant: 30).isActive = true
        
        image.image = UIImage(named: "Солнечно облачно")
        image.tintColor = .white
        
        timeLabel.text = "19.00"
        timeLabel.font = .systemFont(ofSize: 16)
        timeLabel.textColor = .white
        timeLabel.layer.shadowColor = UIColor.black.cgColor
        timeLabel.layer.shadowOffset = CGSize(width: 2, height: 2)
        timeLabel.layer.shadowRadius = 7
        timeLabel.layer.shadowOpacity = 0.3
        
        timeLabel.translatesAutoresizingMaskIntoConstraints = false
        timeLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        timeLabel.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -12).isActive = true
        
        return view
    }()
    
    let verticalView1: UIView = {
        let view = UIView()
        let cLabel = UILabel()
        let timeLabel = UILabel()
        let image = UIImageView()
        
        view.addSubview(timeLabel)
        view.addSubview(cLabel)
        view.addSubview(image)
                
        cLabel.text = "Апр, 27"
        cLabel.font = .boldSystemFont(ofSize: 17)
        cLabel.textColor = .white
        cLabel.layer.shadowColor = UIColor.black.cgColor
        cLabel.layer.shadowOffset = CGSize(width: 2, height: 2)
        cLabel.layer.shadowRadius = 7
        cLabel.layer.shadowOpacity = 0.3
        
        cLabel.translatesAutoresizingMaskIntoConstraints = false
        cLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        cLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 12).isActive = true
        
        image.translatesAutoresizingMaskIntoConstraints = false
        image.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 15).isActive = true
        image.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 16).isActive = true
//        image.heightAnchor.constraint(equalToConstant: 30).isActive = true
//        image.widthAnchor.constraint(equalToConstant: 30).isActive = true
        
        image.image = UIImage(named: "Гроза")
        image.tintColor = .white
        
        timeLabel.text = "21°"
        timeLabel.font = .systemFont(ofSize: 18)
        timeLabel.textColor = .white
        timeLabel.layer.shadowColor = UIColor.black.cgColor
        timeLabel.layer.shadowOffset = CGSize(width: 2, height: 2)
        timeLabel.layer.shadowRadius = 7
        timeLabel.layer.shadowOpacity = 0.3
        
        timeLabel.translatesAutoresizingMaskIntoConstraints = false
        timeLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        timeLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        
        return view
    }()
    
    let verticalView2: UIView = {
        let view = UIView()
        let cLabel = UILabel()
        let timeLabel = UILabel()
        let image = UIImageView()
        
        view.addSubview(timeLabel)
        view.addSubview(image)
        view.addSubview(cLabel)
        
        cLabel.text = "Апр, 28"
        cLabel.font = .boldSystemFont(ofSize: 17)
        cLabel.textColor = .white
        cLabel.layer.shadowColor = UIColor.black.cgColor
        cLabel.layer.shadowOffset = CGSize(width: 2, height: 2)
        cLabel.layer.shadowRadius = 7
        cLabel.layer.shadowOpacity = 0.3
        
        cLabel.translatesAutoresizingMaskIntoConstraints = false
        cLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        cLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 12).isActive = true
        
        image.translatesAutoresizingMaskIntoConstraints = false
        image.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 15).isActive = true
        image.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
//        image.heightAnchor.constraint(equalToConstant: 30).isActive = true
//        image.widthAnchor.constraint(equalToConstant: 30).isActive = true
        
        image.image = UIImage(named: "Дождь-2")
        
        timeLabel.text = "22°"
        timeLabel.font = .systemFont(ofSize: 18)
        timeLabel.textColor = .white
        timeLabel.layer.shadowColor = UIColor.black.cgColor
        timeLabel.layer.shadowOffset = CGSize(width: 2, height: 2)
        timeLabel.layer.shadowRadius = 7
        timeLabel.layer.shadowOpacity = 0.3
        
        timeLabel.translatesAutoresizingMaskIntoConstraints = false
        timeLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        timeLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        
        return view
    }()
    
    let verticalView3: UIView = {
        let view = UIView()
        let cLabel = UILabel()
        let timeLabel = UILabel()
        let image = UIImageView()
        
        view.addSubview(timeLabel)
        view.addSubview(image)
        view.addSubview(cLabel)
        
        cLabel.text = "Апр, 29"
        cLabel.font = .boldSystemFont(ofSize: 17)
        cLabel.textColor = .white
        cLabel.layer.shadowColor = UIColor.black.cgColor
        cLabel.layer.shadowOffset = CGSize(width: 2, height: 2)
        cLabel.layer.shadowRadius = 7
        cLabel.layer.shadowOpacity = 0.3
        
        cLabel.translatesAutoresizingMaskIntoConstraints = false
        cLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        cLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 12).isActive = true
        
        image.translatesAutoresizingMaskIntoConstraints = false
        image.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 15).isActive = true
        image.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
//        image.heightAnchor.constraint(equalToConstant: 30).isActive = true
//        image.widthAnchor.constraint(equalToConstant: 30).isActive = true
        
        image.image = UIImage(named: "Солнечно-2")
        image.tintColor = .white
        
        timeLabel.text = "34°"
        timeLabel.font = .systemFont(ofSize: 18)
        timeLabel.textColor = .white
        timeLabel.layer.shadowColor = UIColor.black.cgColor
        timeLabel.layer.shadowOffset = CGSize(width: 2, height: 2)
        timeLabel.layer.shadowRadius = 7
        timeLabel.layer.shadowOpacity = 0.3
        
        timeLabel.translatesAutoresizingMaskIntoConstraints = false
        timeLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        timeLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        
        return view
    }()
    
    let verticalView4: UIView = {
        let view = UIView()
        let cLabel = UILabel()
        let timeLabel = UILabel()
        let image = UIImageView()
        
        view.addSubview(timeLabel)
        view.addSubview(image)
        view.addSubview(cLabel)
        
        cLabel.text = "Апр, 30"
        cLabel.font = .boldSystemFont(ofSize: 17)
        cLabel.textColor = .white
        cLabel.layer.shadowColor = UIColor.black.cgColor
        cLabel.layer.shadowOffset = CGSize(width: 2, height: 2)
        cLabel.layer.shadowRadius = 7
        cLabel.layer.shadowOpacity = 0.3
        
        cLabel.translatesAutoresizingMaskIntoConstraints = false
        cLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        cLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 12).isActive = true
        
        image.translatesAutoresizingMaskIntoConstraints = false
        image.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 15).isActive = true
        image.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
//        image.heightAnchor.constraint(equalToConstant: 30).isActive = true
//        image.widthAnchor.constraint(equalToConstant: 30).isActive = true
        
        image.image = UIImage(named: "Облачно-2")
        image.tintColor = .white
        
        timeLabel.text = "27°"
        timeLabel.font = .systemFont(ofSize: 18)
        timeLabel.textColor = .white
        timeLabel.layer.shadowColor = UIColor.black.cgColor
        timeLabel.layer.shadowOffset = CGSize(width: 2, height: 2)
        timeLabel.layer.shadowRadius = 7
        timeLabel.layer.shadowOpacity = 0.3
        
        timeLabel.translatesAutoresizingMaskIntoConstraints = false
        timeLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        timeLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        
        return view
    }()
    
    let verticalView5: UIView = {
        let view = UIView()
        let cLabel = UILabel()
        let timeLabel = UILabel()
        let image = UIImageView()
        
        view.addSubview(timeLabel)
        view.addSubview(image)
        view.addSubview(cLabel)
        
        cLabel.text = "Май, 1"
        cLabel.font = .boldSystemFont(ofSize: 17)
        cLabel.textColor = .white
        cLabel.layer.shadowColor = UIColor.black.cgColor
        cLabel.layer.shadowOffset = CGSize(width: 2, height: 2)
        cLabel.layer.shadowRadius = 7
        cLabel.layer.shadowOpacity = 0.3
        
        cLabel.translatesAutoresizingMaskIntoConstraints = false
        cLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        cLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 12).isActive = true
        
        image.translatesAutoresizingMaskIntoConstraints = false
        image.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 15).isActive = true
        image.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
//        image.heightAnchor.constraint(equalToConstant: 30).isActive = true
//        image.widthAnchor.constraint(equalToConstant: 35).isActive = true
        
        image.image = UIImage(named: "Солнечно")
        image.tintColor = .white
        
        timeLabel.text = "32°"
        timeLabel.font = .systemFont(ofSize: 18)
        timeLabel.textColor = .white
        timeLabel.layer.shadowColor = UIColor.black.cgColor
        timeLabel.layer.shadowOffset = CGSize(width: 2, height: 2)
        timeLabel.layer.shadowRadius = 7
        timeLabel.layer.shadowOpacity = 0.3
        
        timeLabel.translatesAutoresizingMaskIntoConstraints = false
        timeLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        timeLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        
        return view
    }()
    
    let weekLabel: UILabel = {
        let cLabel = UILabel()
        cLabel.text = "На этой неделе"
        cLabel.font = .boldSystemFont(ofSize: 25)
        cLabel.textColor = .white
        cLabel.layer.shadowColor = UIColor.black.cgColor
        cLabel.layer.shadowOffset = CGSize(width: 2, height: 2)
        cLabel.layer.shadowRadius = 7
        cLabel.layer.shadowOpacity = 0.3
        
        return cLabel
    }()
    
    let calendarImage: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "Календарь")
        
        return image
    }()
    
    let whiteScrollView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.layer.cornerRadius = 3
        
        return view
    }()
    
    let transparentScrollView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.white.withAlphaComponent(0.0)
        view.layer.borderColor = UIColor(red: 196/255, green: 222/255, blue: 238/255, alpha: 1.0).cgColor
        view.layer.borderWidth = 0.9
        view.layer.cornerRadius = 3
        
        return view
    }()
    
    let companyLabel: UIView = {
        let view = UIView()
        let cLabel = UILabel()
        let image = UIImageView()
        
        view.addSubview(image)
        view.addSubview(cLabel)
        
        cLabel.text = "AccuWeather"
        cLabel.font = .systemFont(ofSize: 18)
        cLabel.textColor = .white
        cLabel.layer.shadowColor = UIColor.black.cgColor
        cLabel.layer.shadowOffset = CGSize(width: 2, height: 2)
        cLabel.layer.shadowRadius = 7
        cLabel.layer.shadowOpacity = 0.3
        
        image.image = UIImage(named: "Солнце")
        image.tintColor = .white
        
        cLabel.translatesAutoresizingMaskIntoConstraints = false
        cLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        cLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 18).isActive = true
        
        image.translatesAutoresizingMaskIntoConstraints = false
        image.trailingAnchor.constraint(equalTo: cLabel.leadingAnchor, constant: -15).isActive = true
        image.centerYAnchor.constraint(equalTo: cLabel.centerYAnchor, constant: -2).isActive = true
        
        return view
    }()
    
    let horizontalStackView = UIStackView()
    let verticalStackView = UIStackView()
    let gradientLayer = CAGradientLayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        gradientLayer.frame = view.bounds
        gradientLayer.colors = [
            UIColor(red: 71/255, green: 191/255, blue: 223/255, alpha: 1.0).cgColor,
            UIColor(red: 74/255, green: 145/255, blue: 255/255, alpha: 1.0).cgColor
        ]
        view.layer.addSublayer(gradientLayer)
        
        createHorizontalStackView()
        createVerticalStackView()
        addToView()
        constraints()
    }
    
    func createHorizontalStackView(){
        horizontalStackView.addArrangedSubview(view1)
        horizontalStackView.addArrangedSubview(view2)
        horizontalStackView.addArrangedSubview(view3)
        horizontalStackView.addArrangedSubview(view4)
        horizontalStackView.addArrangedSubview(view5)
        horizontalStackView.distribution = .fillEqually
        horizontalStackView.axis = .horizontal
        horizontalStackView.spacing = 7
        
        view.addSubview(horizontalStackView)
    }
    
    func createVerticalStackView() {
        verticalStackView.addArrangedSubview(verticalView1)
        verticalStackView.addArrangedSubview(verticalView2)
        verticalStackView.addArrangedSubview(verticalView3)
        verticalStackView.addArrangedSubview(verticalView4)
        verticalStackView.addArrangedSubview(verticalView5)
        verticalStackView.axis = .vertical
        verticalStackView.distribution = .fillEqually
        
        view.addSubview(verticalStackView)
    }
    
    func addToView(){
        view.addSubview(trailImage1)
        view.addSubview(trailImage2)
        view.addSubview(settingsImage)
        view.addSubview(dayLabel)
        view.addSubview(dateLabel)
        view.addSubview(weekLabel)
        view.addSubview(calendarImage)
        view.addSubview(whiteScrollView)
        view.addSubview(transparentScrollView)
        view.addSubview(companyLabel)
    }
    
    func constraints(){
        
        trailImage1.translatesAutoresizingMaskIntoConstraints = false
        trailImage2.translatesAutoresizingMaskIntoConstraints = false
        settingsImage.translatesAutoresizingMaskIntoConstraints = false
        dayLabel.translatesAutoresizingMaskIntoConstraints = false
        dateLabel.translatesAutoresizingMaskIntoConstraints = false
        horizontalStackView.translatesAutoresizingMaskIntoConstraints = false
        weekLabel.translatesAutoresizingMaskIntoConstraints = false
        calendarImage.translatesAutoresizingMaskIntoConstraints = false
        verticalStackView.translatesAutoresizingMaskIntoConstraints = false
        whiteScrollView.translatesAutoresizingMaskIntoConstraints = false
        transparentScrollView.translatesAutoresizingMaskIntoConstraints = false
        companyLabel.translatesAutoresizingMaskIntoConstraints = false
        
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
            
            horizontalStackView.topAnchor.constraint(equalTo: dayLabel.bottomAnchor, constant: 40),
            horizontalStackView.heightAnchor.constraint(equalToConstant: 170),
            horizontalStackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            horizontalStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            horizontalStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            
            weekLabel.topAnchor.constraint(equalTo: horizontalStackView.bottomAnchor, constant: 20),
            weekLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            
            calendarImage.centerYAnchor.constraint(equalTo: weekLabel.centerYAnchor),
            calendarImage.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            calendarImage.heightAnchor.constraint(equalToConstant: 25),
            calendarImage.widthAnchor.constraint(equalToConstant: 25),
            
            verticalStackView.topAnchor.constraint(equalTo: weekLabel.bottomAnchor),
            verticalStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            verticalStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40),
            verticalStackView.heightAnchor.constraint(equalToConstant: 350),
            
            whiteScrollView.leadingAnchor.constraint(equalTo: verticalStackView.trailingAnchor, constant: 20),
            whiteScrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15),
            whiteScrollView.topAnchor.constraint(equalTo: verticalStackView.topAnchor, constant: 20),
            whiteScrollView.heightAnchor.constraint(equalTo: verticalStackView.heightAnchor, constant: -175),
            
            transparentScrollView.leadingAnchor.constraint(equalTo: verticalStackView.trailingAnchor, constant: 20),
            transparentScrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15),
            transparentScrollView.topAnchor.constraint(equalTo: verticalStackView.topAnchor, constant: 20),
            transparentScrollView.bottomAnchor.constraint(equalTo: verticalStackView.bottomAnchor, constant: -25),
            
            companyLabel.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -40),
            companyLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
    }
}
