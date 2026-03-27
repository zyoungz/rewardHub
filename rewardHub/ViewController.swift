//
//  ViewController.swift
//  rewardHub
//
//  Created by 向日葵 on 2026/3/27.
//

import UIKit
import MakeMoneyOnline
import SnapKit

class ViewController: UIViewController {

    
    /// 按钮
    private lazy var okButton:UIButton = {
        let button = UIButton()
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

        okButton.snp.makeConstraints { make in
            make.left.equalTo(18)
            make.right.equalTo(-18)
            make.bottom.equalTo(-30)
            make.height.equalTo(50)
        }
        
    }


}


extension ViewController {
    /// 确定
    @objc private func okButtonAction() {
        RewardhubManager.shared.openFeature(from: self)
    }
    
}
