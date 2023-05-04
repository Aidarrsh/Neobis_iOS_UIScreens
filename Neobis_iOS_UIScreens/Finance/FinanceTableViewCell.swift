//
//  TableViewCell.swift
//  Neobis_iOS_UIScreens
//
//  Created by Айдар Шарипов on 4/5/23.
//

import UIKit

class FinanceTableViewCell: UITableViewCell {
    
    var color = UIColor()
    
    let image : UIImageView = {
        let image = UIImageView()
        image.layer.cornerRadius = 5
        
        return image
    }()
    
    let view : UIView = {
        let view = UIView()
        view.layer.cornerRadius = 20
        
        return view
    }()
    
    let nameLabel : UILabel = {
        let cLabel = UILabel()
        cLabel.font = .systemFont(ofSize: 22)
        
        return cLabel
    }()
    
    let priceLabel : UILabel = {
        let cLabel = UILabel()
        cLabel.font = .boldSystemFont(ofSize: 18)
        
        return cLabel
    }()
    
    let cryptoPriceLabel : UILabel = {
        let cLabel = UILabel()
        cLabel.textColor = .gray
        cLabel.font = .systemFont(ofSize: 16)
        
        return cLabel
    }()
    

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        contentView.addSubview(view)
        contentView.addSubview(image)
        contentView.addSubview(nameLabel)
        contentView.addSubview(priceLabel)
        contentView.addSubview(cryptoPriceLabel)
        
        view.translatesAutoresizingMaskIntoConstraints = false
        image.translatesAutoresizingMaskIntoConstraints = false
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        priceLabel.translatesAutoresizingMaskIntoConstraints = false
        cryptoPriceLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            view.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            view.centerYAnchor.constraint(equalTo: centerYAnchor),
            view.widthAnchor.constraint(equalToConstant: 40),
            view.heightAnchor.constraint(equalToConstant: 40),
            
            image.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            image.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            image.heightAnchor.constraint(equalToConstant: 23),
            image.widthAnchor.constraint(equalToConstant: 23),
            
            nameLabel.leadingAnchor.constraint(equalTo: view.trailingAnchor, constant: 10),
            nameLabel.centerYAnchor.constraint(equalTo: centerYAnchor),
            
            priceLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
            priceLabel.centerYAnchor.constraint(equalTo: centerYAnchor, constant: -8),
            
            cryptoPriceLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
            cryptoPriceLabel.topAnchor.constraint(equalTo: priceLabel.bottomAnchor, constant: -10),
            cryptoPriceLabel.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -10)
        ])

    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

