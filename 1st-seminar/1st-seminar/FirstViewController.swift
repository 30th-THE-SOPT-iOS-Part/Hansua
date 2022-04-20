//
//  FirstViewController.swift
//  1st-seminar
//
//  Created by Sua Han on 2022/04/02.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var messageButton: UIButton!
    @IBOutlet weak var dataTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func goToSecondViewController(_ sender: Any) {
        // guard let : 옵셔널을 안전하게 바인딩
        //이동하고자 하는 화면의 객체를 가져옴
        guard let nextVC =   self.storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as? SecondViewController else { return }
        
        nextVC.message = dataTextField.text // 메세지를 담아서 보내겠다
        
        nextVC.modalPresentationStyle = .pageSheet  // pageSheet, overFullScreen 등
        nextVC.modalTransitionStyle = .crossDissolve
        
        // present방식 활용(모달), nextVC로 화면전환
        //self.present(nextVC, animated: true, completion: nil)
        
        // 네비게이션 push (오른쪽으로 이동)
        self.navigationController?.pushViewController(nextVC, animated: true)
    }
}
