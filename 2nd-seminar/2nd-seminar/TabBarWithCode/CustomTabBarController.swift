//
//  FirstViewController.swift
//  2nd-seminar
//
//  Created by Sua Han on 2022/04/09.
//

import UIKit

class CustomTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        setTabBarController()
    }
    

    // 함수 작성 - 탭바 컨트롤러 세팅
    func setTabBarController(){
        
        // 1. 스토리보드 상에 있는 뷰 컨트롤러를 안전하게 가져와서 인스턴스화하는 작업
        // 사용할 화면, 연결할 화면을 가져온 것!
        guard let firstViewController = self.storyboard?.instantiateViewController(withIdentifier: "CustomFirstViewController"),
              let secondViewController = self.storyboard?.instantiateViewController(withIdentifier: "CustomSecondViewController")
        else { return }
        
        // 2. 첫번때 뷰컨트롤러에 탭바 아이템 설정
        // 시스템 이미지
        firstViewController.tabBarItem = UITabBarItem(
            title: "First Tab",
            image: UIImage(systemName: "house"),
            selectedImage: UIImage(systemName: "house.fill")
        )
        // 에셋 이미지
        secondViewController.tabBarItem = UITabBarItem(
            title: "Second Tab",
            image: UIImage(named: "Home"),    // 개인적으로 추가한 에셋 사용시
            selectedImage: UIImage(systemName: "Home-1")
        )
        
        // 3. 연결 (화면 - 탭바컨트롤러)
        setViewControllers([firstViewController, secondViewController], animated: true) //animated는 별 의미없음
              
    }
    

}
