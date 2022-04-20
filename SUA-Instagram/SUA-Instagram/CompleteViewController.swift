//
//  CompleteViewController.swift
//  SUA-Instagram
//
//  Created by Sua Han on 2022/04/11.
//

import UIKit
    
class CompleteViewController: UIViewController {

    var username: String?
    var password: String?
    
    
    @IBOutlet weak var welcomeLabel: UILabel!
    @IBOutlet weak var completeButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeLabel.text = "\(username ?? "")님 Instagram에 오신 것을 환영합니다"
    }
    
    @IBAction func completeButtonDidTap(_ sender: Any) {
        self.navigationController?.popToRootViewController(animated: false)
        self.dismiss(animated: true)
    }
    
}
