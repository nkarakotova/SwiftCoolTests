//
//  ViewController.swift
//  Navigation
//
//  Created by Natalia on 25.11.2022.
//

import UIKit
import PinLayout

class DevicesViewController: UIViewController {
    
    let deviceButton = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemYellow
        
        deviceButton.backgroundColor = .systemPurple
        deviceButton.layer.cornerRadius = 7
        deviceButton.addTarget(self, action: #selector(didTapDeviceButton), for: .touchUpInside)
        deviceButton.clipsToBounds = true
        
        view.addSubview(deviceButton)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        deviceButton.pin
            .height(70)
            .width(70)
            .horizontally((view.frame.width - 70) / 2)
            .vertically((view.frame.height - 70) / 2)
        
    }
    
    @objc
    private func didTapDeviceButton() {
        
        self.hidesBottomBarWhenPushed = true
        self.navigationController?.pushViewController(DeviceViewController(), animated: true)
        self.hidesBottomBarWhenPushed = false
        
    }
}

