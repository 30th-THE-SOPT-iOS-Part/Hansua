//
//  SecondViewController.swift
//  1st-seminar
//
//  Created by Sua Han on 2022/04/02.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var dataLabel: UILabel!
    // 이전 화면에서 전달되는 값을 받기위해 프로퍼티 추가 (외부에서 직접 값 대입, 참조 불가)
    var message: String?
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setMessage()
    }
    
    @IBAction func backButtonDidTap(_ sender: Any) {
        // dismiss 메서드
        // self.dismiss(animated: true, completion: nil)
        // navigation
         self.navigationController?.popViewController(animated: true)
    }
    
    private func setMessage() {
        if let message = message {
            dataLabel.text = message
            dataLabel.sizeToFit()
        }
    }
    
    /*
    present - dismiss : modal
     push - pop : navigation
    */

}
