//
//  Extension.swift
//

import UIKit


extension UIViewController {
    func makeBackButton() {
        let backImage = Const.ImageAssets.backArrow
        self.navigationController?.navigationBar.backIndicatorImage = backImage
        self.navigationController?.navigationBar.backIndicatorTransitionMaskImage = backImage
        self.navigationItem.backButtonTitle = ""
    }
}
