//
//  TableViewCell.swift
//  Neobis_iOS_ToDoApp
//
//  Created by Айдар Шарипов on 25/4/23.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    var color = UIColor()
    
    let image : UIImageView = {
        let image = UIImageView()
        image.layer.cornerRadius = 5
        
        return image
    }()
    
    let view : UIView = {
        let view = UIView()
        view.layer.cornerRadius = 25
        
        return view
    }()
    
    let nameLabel : UILabel = {
        let cLabel = UILabel()
        cLabel.font = .boldSystemFont(ofSize: 22)
        
        return cLabel
    }()
    
    let percentLabel : UILabel = {
        let cLabel = UILabel()
        cLabel.textColor = .gray
        cLabel.font = .systemFont(ofSize: 12)
        
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
        cLabel.font = .systemFont(ofSize: 12)
        
        return cLabel
    }()
    

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        contentView.addSubview(view)
        contentView.addSubview(image)
        contentView.addSubview(nameLabel)
        contentView.addSubview(percentLabel)
        contentView.addSubview(priceLabel)
        contentView.addSubview(cryptoPriceLabel)
        
        view.translatesAutoresizingMaskIntoConstraints = false
        image.translatesAutoresizingMaskIntoConstraints = false
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        percentLabel.translatesAutoresizingMaskIntoConstraints = false
        priceLabel.translatesAutoresizingMaskIntoConstraints = false
        cryptoPriceLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            view.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            view.topAnchor.constraint(equalTo: topAnchor, constant: 10),
            view.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -10),
            view.widthAnchor.constraint(equalToConstant: 70),
            view.heightAnchor.constraint(equalToConstant: 50),
            
            image.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            image.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            image.heightAnchor.constraint(equalToConstant: 28),
            image.widthAnchor.constraint(equalToConstant: 28),
            
            nameLabel.leadingAnchor.constraint(equalTo: view.trailingAnchor, constant: 10),
            nameLabel.centerYAnchor.constraint(equalTo: centerYAnchor, constant: -16),
            
            percentLabel.leadingAnchor.constraint(equalTo: view.trailingAnchor, constant: 10),
            percentLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 10),
            
            priceLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
            priceLabel.centerYAnchor.constraint(equalTo: centerYAnchor, constant: -12),
            
            cryptoPriceLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
            cryptoPriceLabel.centerYAnchor.constraint(equalTo: percentLabel.centerYAnchor),
            cryptoPriceLabel.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -10)
        ])

    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
