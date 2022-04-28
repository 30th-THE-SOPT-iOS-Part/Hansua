//
//  DelegateViewController.swift
//  3rd-seminar
//
//  Created by Sua Han on 2022/04/23.
//

import UIKit

class DelegateViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        textField.delegate = self
    }

}

extension DelegateViewController: UITextFieldDelegate {
    func textFieldDidBeginEditing(_ textField: UITextField){
        print("텍스트 필드의 편집이 시작되었습니다!")
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        print("Return버튼이 눌렸어용")
        textField.endEditing(true)
        return true
    }
    
    func textFieldDidEndEditing(_ textField: UITextField, reason: UITextField.DidEndEditingReason) {
        print("텍스트 필드의 편집이 끝났습니다!")
    }
}
