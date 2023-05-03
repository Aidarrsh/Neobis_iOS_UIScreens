//
//  ViewController.swift
//  Neobis_iOS_UIScreens
//
//  Created by Айдар Шарипов on 27/4/23.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    let weatherButton = UIButton()
    let kryptoButton  = UIButton()
    let financeButton = UIButton()
    let travelButton  = UIButton()
    let lastButton    = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        addToView()
        constraints()
        
        view.backgroundColor = .white
        navigationController?.navigationBar.tintColor = UIColor.white
        
        weatherButton.setTitle("Weather", for: .normal)
        weatherButton.setTitleColor(.systemBlue, for: .normal)
        weatherButton.addTarget(self, action: #selector (weatherButtonTapped), for: .touchUpInside)
        
        kryptoButton.setTitle("Krypto", for: .normal)
        kryptoButton.setTitleColor(.systemBlue, for: .normal)
        kryptoButton.addTarget(self, action: #selector (kryptoButtonTapped), for: .touchUpInside)
        
        financeButton.setTitle("Finance", for: .normal)
        financeButton.setTitleColor(.systemBlue, for: .normal)
        
        travelButton.setTitle("Travel", for: .normal)
        travelButton.setTitleColor(.systemBlue, for: .normal)
        
        lastButton.setTitle("Last", for: .normal)
        lastButton.setTitleColor(.systemBlue, for: .normal)
    }
    
    @objc func weatherButtonTapped() {
        
        let vc = WeatherClass()
        navigationController?.pushViewController(vc, animated: true)
    }
    
    @objc func kryptoButtonTapped() {
        
        let vc = KryptoClass()
        
        vc.view.backgroundColor = .white
        navigationController?.pushViewController(vc, animated: true)
//        let tabBar = UITabBarController()
//
//        let vc1 = KryptoClass()
//        let vc2 = UIViewController()
//        let vc3 = UIViewController()
//
//        vc2.view.backgroundColor = .red
//        vc3.view.backgroundColor = .blue
//        tabBar.tabBar.layer.borderColor = .init(red: 235/255, green: 239/255, blue: 245/255, alpha: 100)
//
//        tabBar.setViewControllers([vc1, vc2, vc3], animated: false)
//
//        tabBar.modalPresentationStyle = .fullScreen
//
//        present(tabBar, animated: true)
            
    }

    func addToView(){
        
        view.addSubview(weatherButton)
        view.addSubview(kryptoButton)
        view.addSubview(financeButton)
        view.addSubview(travelButton)
        view.addSubview(lastButton)
    }
    
    func constraints(){
        
        weatherButton.snp.makeConstraints{ make in
            make.centerX.equalToSuperview()
            make.top.equalToSuperview().inset(150)
        }
        
        kryptoButton.snp.makeConstraints{ make in
            make.centerX.equalToSuperview()
            make.top.equalToSuperview().inset(250)
        }
        
        financeButton.snp.makeConstraints{ make in
            make.centerX.equalToSuperview()
            make.top.equalToSuperview().inset(350)
        }
        
        travelButton.snp.makeConstraints{ make in
            make.centerX.equalToSuperview()
            make.top.equalToSuperview().inset(450)
        }
        
        lastButton.snp.makeConstraints{ make in
            make.centerX.equalToSuperview()
            make.top.equalToSuperview().inset(550)
        }
    }

}

