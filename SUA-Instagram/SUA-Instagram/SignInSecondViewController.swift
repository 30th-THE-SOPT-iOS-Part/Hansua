//
//  SignInSecondViewController.swift
//  SUA-Instagram
//
//  Created by Sua Han on 2022/04/11.
//

import UIKit

class SignInSecondViewController: UIViewController {
    
    var username: String?
    @IBOutlet weak var pwTextField: UITextField!
    
    @IBOutlet weak var nextButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func nextButtonDidTap(_ sender: Any) {
        guard let nextVC =   self.storyboard?.instantiateViewController(withIdentifier: "CompleteViewController") as? CompleteViewController else { return }
        
        nextVC.username = username
        nextVC.password = pwTextField.text
        
        nextVC.modalPresentationStyle = .pageSheet
        nextVC.modalTransitionStyle = .crossDissolve

        self.navigationController?.pushViewController(nextVC, animated: true)
    }
}
