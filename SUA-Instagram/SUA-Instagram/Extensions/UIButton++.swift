//
//  UIButton++.swift
//  SUA-Instagram
//
//  Created by Sua Han on 2022/04/28.
//

import UIKit

extension UIButton {
    
    func setEnableStatus(enabled: Bool) {
        isEnabled = enabled
        if isEnabled { backgroundColor = .link }
        else { backgroundColor = Const.Color.buttonBlocked }
    }
}
