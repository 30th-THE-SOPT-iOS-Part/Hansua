//
//  SignInFirstViewController.swift
//  SUA-Instagram
//
//  Created by Sua Han on 2022/04/10.
//

import UIKit

class SignInFirstViewController: UIViewController {

    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var nextButton: UIButton!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func nextButtonDidTap(_ sender: Any) {
        guard let nextVC =   self.storyboard?.instantiateViewController(withIdentifier: "SignInSecondViewController") as? SignInSecondViewController else { return }
        
        nextVC.username = usernameTextField.text
        
        nextVC.modalPresentationStyle = .pageSheet
        nextVC.modalTransitionStyle = .crossDissolve

        self.navigationController?.pushViewController(nextVC, animated: true)
    }
}
