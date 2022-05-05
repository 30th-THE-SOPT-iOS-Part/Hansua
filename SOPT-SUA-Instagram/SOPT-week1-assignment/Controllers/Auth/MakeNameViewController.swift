//
//  MakeNameViewController.swift
//  

import UIKit

class MakeNameViewController: UIViewController {

    @IBOutlet private weak var titleLabel: UILabel!
    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var nameDescriptionLabel: UILabel!
    @IBOutlet weak var nameNextButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setDescriptionLabel()
        setBtn()
        makeBackButton()
    }
    

    @IBAction func textedName(_ sender: Any) {
        
        if userNameTextField.hasText {
            nameNextButton.isEnabled = true
            nameNextButton.backgroundColor = .systemBlue
        } else {
            nameNextButton.isEnabled = false
            nameNextButton.backgroundColor = UIColor(displayP3Red: 107/255, green: 203/255, blue: 252/255, alpha: 1)
        }
        
    }
    
    @IBAction func goToMakePwVC(_ sender: Any) {
        guard let makePasswordVC = self.storyboard?.instantiateViewController(withIdentifier: Const.ViewController.MakePw) as? MakePwViewController else {
            return
        }
        
        makePasswordVC.userNameInPwVC = userNameTextField.text
        
        self.navigationController?.pushViewController(makePasswordVC, animated: true)
    }
    
    private func setDescriptionLabel() {
        titleLabel.text = "사용자 이름 만들기"
        nameDescriptionLabel.text = "새 계정에 사용할 사용자 이름을 선택하세요. 나중에 언제든지 변경할 수 있습니다."
        nameDescriptionLabel.sizeToFit()
        titleLabel.sizeToFit()
    }
    
    private func setBtn() {
        nameNextButton.isEnabled = false
    }
    

}
