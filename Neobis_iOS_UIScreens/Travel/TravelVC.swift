//
//  TravelVC.swift
//  Neobis_iOS_UIScreens
//
//  Created by Айдар Шарипов on 5/5/23.
//

import Foundation
import UIKit

class TravelClass : UIViewController {
    
    let titleLabel : UILabel = {
        let cLabel = UILabel()
        cLabel.font = .systemFont(ofSize: 24)
        cLabel.numberOfLines = 0
        cLabel.text = "Путешествуйте \n Почувствуйте прилив энергии"
        cLabel.textAlignment = .center
        
        return cLabel
    }()
    
    let descriptionLabel : UILabel = {
        let cLabel = UILabel()
        cLabel.font = .systemFont(ofSize: 14)
        cLabel.numberOfLines = 0
        cLabel.text = "Мы поможем вам исследовать, сравнить и \n забронировать впечатления - все в одном \n месте."
        cLabel.textAlignment = .center
        
        return cLabel
    }()
    
    let searchBar : UISearchBar = {
        let bar = UISearchBar()
        bar.searchBarStyle = .minimal
        bar.placeholder = "Куда хотите поехать?"
        bar.searchTextField.font = .systemFont(ofSize: 12)
        
        
        return bar
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        searchBar.sizeToFit()
        
        addToView()
        constraints()
    }
    
    func addToView() {
        view.addSubview(titleLabel)
        view.addSubview(descriptionLabel)
        view.addSubview(searchBar)
    }
    
    func constraints() {
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        descriptionLabel.translatesAutoresizingMaskIntoConstraints = false
        searchBar.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 30),
            titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            titleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
            titleLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15),
            
            descriptionLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 10),
            descriptionLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            descriptionLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            descriptionLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
            
            searchBar.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            searchBar.topAnchor.constraint(equalTo: descriptionLabel.bottomAnchor, constant: 5),
            searchBar.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            searchBar.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
        ])
    }
}

