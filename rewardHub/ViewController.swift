//
//  ViewController.swift
//  rewardHub
//
//  Created by 向日葵 on 2026/3/27.
//

import UIKit
import MakeMoneyOnline

class ViewController: UIViewController {

    
    /// 按钮
    private lazy var okButton:UIButton = {
        let button = UIButton()
        button.frame = CGRect(x: 60, y: 60, width: 300, height: 50)
        button.setTitle("长按说话", for: .normal)
        button.backgroundColor = .purple
        button.layer.cornerRadius = 25.0
        button.clipsToBounds = true
        button.addTarget(self, action: #selector(okButtonAction) , for: .touchUpInside)

        
        return button
    }()
    

    override func viewDidLoad() {
        super.viewDidLoad()
     
        
        setupUI()
    }
    
    private func setupUI() {
        self.view.backgroundColor = .white
        
        self.view.addSubview(okButton)

    }


}


extension ViewController {
    /// 确定
    @objc private func okButtonAction() {
        RewardhubManager.shared.openFeature(from: self)
    }
    
}
