//
//  CryptoVC.swift
//  Neobis_iOS_UIScreens
//
//  Created by Айдар Шарипов on 2/5/23.
//

import Foundation
import UIKit
//uitabbarviewcontroller
class KryptoClass : UITabBarController {
    
    let titleLabel : UILabel = {
        let cLabel = UILabel()
        cLabel.text = "Портфолио"
        cLabel.font = .boldSystemFont(ofSize: 30)
        return cLabel
    }()
    
    let gearImage : UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "Настройки-2")
        image.tintColor = .systemGray
        return image
    }()
    
    let expandLabel : UILabel = {
        let cLabel = UILabel()
        cLabel.text = "ПОСМОТРЕТЬ ВСЕ"
        cLabel.font = .systemFont(ofSize: 10)
        cLabel.textColor = .red
        return cLabel
    }()
    
    let tableView : UITableView = {
        let tableView = UITableView()
//        tableView.backgroundColor = .orange
        return tableView
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
    
    let cryptos = [
        Crypto(image: "bitcoin-logo", nameLabel: "Bitcoin", percentLabel: "+1,6%", priceLabel: "$29,850.15", cryptoPriceLabel: "2.73 BTC"),
        Crypto(image: "eth-symbol-virgil", nameLabel: "Ethereum", percentLabel: "-0,2%", priceLabel: "$10,561.24", cryptoPriceLabel: "47.61 ETH"),
        Crypto(image: "Vector-2 1", nameLabel: "Litecoin", percentLabel: "-2,10%", priceLabel: "$3,676.76", cryptoPriceLabel: "39,27 LTC"),
        Crypto(image: "iconfinder_XRP-alt_1175359", nameLabel: "Ripple", percentLabel: "+0,27%", priceLabel: "$5,241.62", cryptoPriceLabel: "16447 XRP"),
        Crypto(image: "iconfinder_XRP-alt_1175359", nameLabel: "Ripple", percentLabel: "+0,27%", priceLabel: "$5,241.62", cryptoPriceLabel: "16447 XRP"),
        Crypto(image: "iconfinder_XRP-alt_1175359", nameLabel: "Ripple", percentLabel: "+0,27%", priceLabel: "$5,241.62", cryptoPriceLabel: "16447 XRP"),
        
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.tintColor = UIColor.blue
        view.backgroundColor = .white
        
        addToView()
        constraints()
        
        tableView.rowHeight = 90
        tableView.dataSource = self
        tableView.register(TableViewCell.self, forCellReuseIdentifier: "cell")
        
    }
    
    func addToView(){
        view.addSubview(titleLabel)
        view.addSubview(gearImage)
        view.addSubview(expandLabel)
//        view.addSubview(tabBar)
        view.addSubview(tableView)
    }
    
    func constraints(){
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        gearImage.translatesAutoresizingMaskIntoConstraints = false
        expandLabel.translatesAutoresizingMaskIntoConstraints = false
//        tabBar.translatesAutoresizingMaskIntoConstraints = false
        tableView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 95),
            titleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            
            gearImage.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
            gearImage.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
            
            expandLabel.topAnchor.constraint(equalTo: titleLabel.topAnchor, constant: 70),
            expandLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
            
//            tabBar.leadingAnchor.constraint(equalTo: view.leadingAnchor),
//            tabBar.trailingAnchor.constraint(equalTo: view.trailingAnchor),
//            tabBar.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
//            tabBar.heightAnchor.constraint(equalToConstant: 75),
            
            tableView.topAnchor.constraint(equalTo: expandLabel.bottomAnchor, constant: 10),
//            tableView.bottomAnchor.constraint(equalTo: view.topAnchor, constant: 120),
            tableView.heightAnchor.constraint(equalToConstant: CGFloat(cryptos.count * 90)),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        ])
    }
    
}


struct Crypto {
    var image : String
    var nameLabel : String
    var percentLabel : String
    var priceLabel : String
    var cryptoPriceLabel : String
}

extension KryptoClass: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 6
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
        let crypto = cryptos[indexPath.row]
        
        switch indexPath.row {
        case 0:
            cell.view.backgroundColor = UIColor(red: 254/255, green: 237/255, blue: 236/255, alpha: 100)
        case 1:
            cell.view.backgroundColor = UIColor(red: 239/255, green: 241/255, blue: 249/255, alpha: 100)
        case 2:
            cell.view.backgroundColor = UIColor(red: 234/255, green: 252/255, blue: 246/255, alpha: 100)
        case 3:
            cell.view.backgroundColor = UIColor(red: 239/255, green: 244/255, blue: 255/255, alpha: 100)
        case 4:
            cell.view.backgroundColor = UIColor(red: 239/255, green: 244/255, blue: 255/255, alpha: 100)
        default:
            cell.view.backgroundColor = UIColor(red: 239/255, green: 244/255, blue: 255/255, alpha: 100)
        }
        

        cell.image.image = UIImage(named: crypto.image)
        cell.nameLabel.text = crypto.nameLabel
        cell.priceLabel.text = crypto.priceLabel
        cell.percentLabel.text = crypto.percentLabel
        cell.cryptoPriceLabel.text = crypto.cryptoPriceLabel
        
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
