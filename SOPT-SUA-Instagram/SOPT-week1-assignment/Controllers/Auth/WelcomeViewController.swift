//
//  WelcomeViewController.swift
//  

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet weak var welcomeLabel: UILabel!
    
    var userName: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setName()
    }
    
    @IBAction func loginWithAnotherID(_ sender: UIButton) {
        self.dismiss(animated: true)
    }
    private func setName() {
        if let userName = userName {
            welcomeLabel.text = userName + "님, Instagram에 오신 것을 환영합니다"
            welcomeLabel.sizeToFit()
        }
    }
    

    @IBAction func moveToMainScreen(_ sender: UIButton) {
        
        guard let mainScreen = UIStoryboard(name: Const.Storyboard.TabBar, bundle: nil).instantiateViewController(withIdentifier: Const.TabBarController.TabBar) as? InstaTabBarController else {
            return
        }
        
        mainScreen.modalPresentationStyle = .fullScreen
        mainScreen.modalTransitionStyle = .crossDissolve
        
        self.present(mainScreen, animated: true) {
            self.view.window?.rootViewController = mainScreen
            self.view.window?.makeKeyAndVisible()
        }
        
    }
}
