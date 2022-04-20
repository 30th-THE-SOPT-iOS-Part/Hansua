//
//  ViewController.swift
//  SUA-Instagram
//
//  Created by Sua Han on 2022/04/08.
//

import UIKit

class ViewController: UIViewController {
                            
    @IBOutlet weak var idTextField: UITextField!
    @IBOutlet weak var pwTextField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var signinButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // 모달방식 (present-dismiss)
    @IBAction func loginButtonDidTap(_ sender: Any) {
        guard let loginCompleteVC = self.storyboard?.instantiateViewController(withIdentifier: "CompleteViewController") as? CompleteViewController else { return }
        
        loginCompleteVC.username = idTextField.text
        
        loginCompleteVC.modalTransitionStyle = .crossDissolve
        loginCompleteVC.modalPresentationStyle = .fullScreen
            
        self.present(loginCompleteVC, animated: true)
    }
    
    // 네비게이션 방식
    @IBAction func signinButtonDipTap(_ sender: Any) {
        guard let joinVC =   self.storyboard?.instantiateViewController(withIdentifier: "SignInFirstViewController") as? SignInFirstViewController else { return }
        
        self.navigationController?.pushViewController(joinVC, animated: true)
    }
}

