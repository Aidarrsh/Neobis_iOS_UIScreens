//
//  LastTableViewCell.swift
//  Neobis_iOS_UIScreens
//
//  Created by Айдар Шарипов on 4/5/23.
//

import UIKit

class LastTableViewCell: UITableViewCell {
    
    var color = UIColor()
    
    let image : UIImageView = {
        let image = UIImageView()
        image.layer.cornerRadius = 5
        
        return image
    }()
    
    let arrowImage : UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "Union 3")
        
        return image
    }()
    
    let view : UIView = {
        let view = UIView()
        view.layer.cornerRadius = 20
        
        return view
    }()
    
    let titleLabel : UILabel = {
        let cLabel = UILabel()
        cLabel.font = .systemFont(ofSize: 30)
        
        return cLabel
    }()
    
    let descriptionLabel : UILabel = {
        let cLabel = UILabel()
        cLabel.numberOfLines = 0
        
        return cLabel
    }()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        contentView.addSubview(view)
        contentView.addSubview(image)
        contentView.addSubview(titleLabel)
        contentView.addSubview(descriptionLabel)
        contentView.addSubview(arrowImage)
        
        view.translatesAutoresizingMaskIntoConstraints = false
        image.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        descriptionLabel.translatesAutoresizingMaskIntoConstraints = false
        arrowImage.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            
//            view.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
//            view.centerYAnchor.constraint(equalTo: centerYAnchor),
//            view.widthAnchor.constraint(equalToConstant: 40),
//            view.heightAnchor.constraint(equalToConstant: 40),
            
            image.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            image.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            image.heightAnchor.constraint(equalToConstant: 90),
            image.widthAnchor.constraint(equalToConstant: 90),
            
            arrowImage.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            arrowImage.centerYAnchor.constraint(equalTo: centerYAnchor)

        ])

    }
    
    func setupConstraintsForFirstCell() {
        NSLayoutConstraint.activate([
            view.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -60),
            view.centerYAnchor.constraint(equalTo: centerYAnchor),
            view.widthAnchor.constraint(equalToConstant: 100),
            view.heightAnchor.constraint(equalToConstant: 100),
            
            titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            titleLabel.topAnchor.constraint(equalTo: topAnchor, constant: 40),
            
            descriptionLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            descriptionLabel.trailingAnchor.constraint(equalTo: image.leadingAnchor, constant: 20),
            descriptionLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 10),
        ])
    }
    
    func setupConstraintsForSecondCell() {
        NSLayoutConstraint.activate([
            view.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            view.centerYAnchor.constraint(equalTo: centerYAnchor),
            view.widthAnchor.constraint(equalToConstant: 80),
            view.heightAnchor.constraint(equalToConstant: 80),
            
            titleLabel.leadingAnchor.constraint(equalTo: image.trailingAnchor, constant: 30),
            titleLabel.topAnchor.constraint(equalTo: topAnchor, constant: 40),
            
            descriptionLabel.leadingAnchor.constraint(equalTo: image.trailingAnchor, constant: 30),
            descriptionLabel.trailingAnchor.constraint(equalTo: arrowImage.leadingAnchor, constant: 20),
            descriptionLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 10),
        ])
    }
    
    func setupConstraintsForThirdCell() {
        NSLayoutConstraint.activate([
            view.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -60),
            view.centerYAnchor.constraint(equalTo: centerYAnchor),
            view.widthAnchor.constraint(equalToConstant: 100),
            view.heightAnchor.constraint(equalToConstant: 80),
            
            titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            titleLabel.topAnchor.constraint(equalTo: topAnchor, constant: 40),
            
            descriptionLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            descriptionLabel.trailingAnchor.constraint(equalTo: image.leadingAnchor, constant: 20),
            descriptionLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 10),
        ])
    }
    
    func setupConstraintsForFourthCell() {
        NSLayoutConstraint.activate([
            view.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            view.centerYAnchor.constraint(equalTo: centerYAnchor),
            view.widthAnchor.constraint(equalToConstant: 80),
            view.heightAnchor.constraint(equalToConstant: 80),
            
            titleLabel.leadingAnchor.constraint(equalTo: image.trailingAnchor, constant: 30),
            titleLabel.topAnchor.constraint(equalTo: topAnchor, constant: 40),
            
            descriptionLabel.leadingAnchor.constraint(equalTo: image.trailingAnchor, constant: 30),
            descriptionLabel.trailingAnchor.constraint(equalTo: arrowImage.leadingAnchor, constant: 20),
            descriptionLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 10),
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

