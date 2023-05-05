//
//  FinanceVC.swift
//  Neobis_iOS_UIScreens
//
//  Created by Айдар Шарипов on 4/5/23.
//

import Foundation
import UIKit
//uitabbarviewcontroller
class FinanceClass : UIViewController {
    
    let balanceLabel : UILabel = {
        let cLabel = UILabel()
        cLabel.text = "Баланс"
        cLabel.font = .boldSystemFont(ofSize: 16)
        return cLabel
    }()
    
    let cashLabel : UILabel = {
        let cLabel = UILabel()
        cLabel.text = "$1200.89"
        cLabel.font = .boldSystemFont(ofSize: 35)
        return cLabel
    }()
    
    let dateLabel : UILabel = {
        let cLabel = UILabel()
        cLabel.text = "Апрель 2020"
        cLabel.font = .systemFont(ofSize: 18)
        return cLabel
    }()
    
    let tableView : UITableView = {
        let tableView = UITableView()
        
        tableView.layer.cornerRadius = 40
        
        return tableView
    }()
    
    let arrowLeftImage : UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "Union")
        
        return image
    }()
    
    let arrowRightImage : UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "Union 1")
        
        return image
    }()
    
    let expandLabel : UILabel = {
        let cLabel = UILabel()
        cLabel.text = "См. ещё"
        cLabel.font = .systemFont(ofSize: 20)
        
        return cLabel
    }()
    
//    let tabBar: UITabBar = {
//        let tabBar = UITabBar()
//        tabBar.backgroundColor = UIColor.white
//        return tabBar
//    }()
    
    let bitcoinImage : UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "circle")
        
        return image
    }()
    
    let finances = [
        Finance(image: "home_alt_fill", nameLabel: "Дом", priceLabel: "$321", cryptoPriceLabel: "Продукты"),
        Finance(image: "tag", nameLabel: "Покупки", priceLabel: "$574", cryptoPriceLabel: "Одежда"),
        Finance(image: "happy", nameLabel: "Транспорт", priceLabel: "$124", cryptoPriceLabel: "Такси"),
        Finance(image: "heart_fill", nameLabel: "Здоровье", priceLabel: "$765", cryptoPriceLabel: "Лечение"),
        Finance(image: "cookie", nameLabel: "Фитнес", priceLabel: "$324", cryptoPriceLabel: "Тренировки"),
        Finance(image: "mail", nameLabel: "Счета", priceLabel: "$726", cryptoPriceLabel: "Коммунальные"),
        Finance(image: "heart_fill", nameLabel: "Ресторан", priceLabel: "$325", cryptoPriceLabel: "Ужин"),

    ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.tintColor = UIColor.blue
        view.backgroundColor = UIColor(red: 250/255, green: 250/255, blue: 250/255, alpha: 100)
        
        
        tableView.rowHeight = 70
        tableView.dataSource = self
        tableView.register(FinanceTableViewCell.self, forCellReuseIdentifier: "cell")
        
        addToView()
        constraints()
    }
    
    func addToView(){
        view.addSubview(cashLabel)
        view.addSubview(balanceLabel)
        view.addSubview(dateLabel)
        view.addSubview(arrowLeftImage)
        view.addSubview(arrowRightImage)
        view.addSubview(tableView)
        view.addSubview(expandLabel)
    }
    
    func constraints(){
        cashLabel.translatesAutoresizingMaskIntoConstraints = false
        balanceLabel.translatesAutoresizingMaskIntoConstraints = false
        dateLabel.translatesAutoresizingMaskIntoConstraints = false
        arrowLeftImage.translatesAutoresizingMaskIntoConstraints = false
        arrowRightImage.translatesAutoresizingMaskIntoConstraints = false
        tableView.translatesAutoresizingMaskIntoConstraints = false
        expandLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            cashLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
            cashLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            balanceLabel.bottomAnchor.constraint(equalTo: cashLabel.topAnchor, constant: -10),
            balanceLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            dateLabel.topAnchor.constraint(equalTo: cashLabel.topAnchor, constant: 60),
            dateLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            arrowLeftImage.centerYAnchor.constraint(equalTo: dateLabel.centerYAnchor),
            arrowLeftImage.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40),
            
            arrowRightImage.centerYAnchor.constraint(equalTo: dateLabel.centerYAnchor),
            arrowRightImage.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40),
            
            tableView.topAnchor.constraint(equalTo: dateLabel.bottomAnchor, constant: 10),
            tableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -20),
//            tableView.heightAnchor.constraint(equalToConstant: CGFloat(finances.count * 80)),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            
            expandLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            expandLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -65)
        ])
    }
    
}


struct Finance {
    var image : String
    var nameLabel : String
    var priceLabel : String
    var cryptoPriceLabel : String
}

extension FinanceClass: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 7
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! FinanceTableViewCell
        let finance = finances[indexPath.row]
        
        switch indexPath.row {
        case 0:
            cell.view.backgroundColor = UIColor(red: 255/255, green: 195/255, blue: 40/255, alpha: 100)
        case 1:
            cell.view.backgroundColor = UIColor(red: 60/255, green: 0/255, blue: 158/255, alpha: 100)
        case 2:
            cell.view.backgroundColor = UIColor(red: 156/255, green: 199/255, blue: 65/255, alpha: 100)
        case 3:
            cell.view.backgroundColor = UIColor(red: 194/255, green: 65/255, blue: 204/255, alpha: 100)
        case 4:
            cell.view.backgroundColor = UIColor(red: 30/255, green: 134/255, blue: 255/255, alpha: 100)
        case 5:
            cell.view.backgroundColor = UIColor(red: 35/255, green: 192/255, blue: 227/255, alpha: 100)
        case 6:
            cell.view.backgroundColor = UIColor(red: 194/255, green: 65/255, blue: 204/255, alpha: 100)
        default:
            cell.view.backgroundColor = UIColor(red: 239/255, green: 244/255, blue: 255/255, alpha: 100)
        }
        

        cell.image.image = UIImage(named: finance.image)
        cell.nameLabel.text = finance.nameLabel
        cell.priceLabel.text = finance.priceLabel
        cell.cryptoPriceLabel.text = finance.cryptoPriceLabel
        
        cell.selectionStyle = .none
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50.0
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
}

