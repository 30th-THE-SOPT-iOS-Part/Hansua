//
//  UITextField++.swift
//  SUA-Instagram
//
//  Created by Sua Han on 2022/04/28.
//

import UIKit


extension UITextField {
    
    enum ButtonIcon {
        case clear
        case password_toggle
    }
    
    func setIcon(_ image: UIImage?, seletedImage: UIImage? = nil, for iconType: ButtonIcon) {
        guard let image = image else { return }

        let iconButton = UIButton(frame: CGRect(x: 0, y: 5, width: 20, height: 20))
        iconButton.setImage(image, for: .normal)
        if let seletedImage = seletedImage {
            iconButton.setImage(seletedImage, for: .selected)
        }
        
        addTargetToButton(button: iconButton, for: iconType)
        
        let iconContainerView: UIView = UIView(frame: CGRect(x: 0, y: 0, width: 30, height: 30))
        iconContainerView.addSubview(iconButton)
        
        rightView = iconContainerView
        rightView?.tintColor = .gray
        rightViewMode = .always
    }
    
    func addTargetToButton(button: UIButton, for iconType: ButtonIcon) {
        switch iconType {
        case .clear:
            button.addTarget(self, action: #selector(handleClearIconTapped), for: .touchUpInside)
        case .password_toggle:
            button.addTarget(self, action: #selector(handlePasswordIconTapped), for: .touchUpInside)
        }
    }
    
    @objc func handleClearIconTapped(_ sender: UIButton) {
        text = ""
    }
    
    @objc func handlePasswordIconTapped(_ sender: UIButton) {
        sender.isSelected.toggle()
        isSecureTextEntry.toggle()
    }
    
    
}

