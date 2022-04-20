//
//  ViewController.swift
//  1st-seminar
//
//  Created by Sua Han on 2022/04/02.
//

import UIKit
import AVFoundation // 효과음

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var imageLabel: UIImageView!
    override func viewDidLoad() {   // 최초 실행시 처리
        super.viewDidLoad()
        messageLabel.text = "도착한 메세지가 없어용📬"
    }

    @IBAction func doneButtonDidTap(_ sender: Any) {
        messageLabel.text = "새로운 메세지가 도착했어요📬"
        messageLabel.textColor = UIColor.green  //UIColor는 생략가능
        messageLabel.sizeToFit()    // 라벨크기 변경
        AudioServicesPlayAlertSound(SystemSoundID(1307))
    }
    
}

