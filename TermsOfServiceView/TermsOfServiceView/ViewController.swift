//
//  ViewController.swift
//  TermsOfServiceView
//
//  Created by 겸 on 2022/09/26.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var buttonForAll: CheckAllButton!
    @IBOutlet weak var button1: checkBoxButton!
    @IBOutlet weak var button2: checkBoxButton!
    @IBOutlet weak var button3: checkBoxButton!
    @IBOutlet weak var confirmButton: confirmButton!
    @IBOutlet weak var button4: checkBoxButton!
    
    
    var selected : Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    //MARK: - 약관 전체동의 -> 모두 활성화 
    @IBAction func checkAll(_ sender: UIButton) {
        if(buttonForAll.isChecked == true){
        }
    }
    
  
    @IBAction func changeLastButton(_ sender: UIButton) {
        
        // 버튼2 와 3의 값이 참으로 바뀌면 확인 버튼 색 변경 ( 활성화 )
        if(button2.isChecked == true && button3.isChecked == true){
            confirmButton.backgroundColor = .systemBlue
            confirmButton.titleLabel?.textColor = UIColor.white

//            confirmButton.state = .normal
        }else{
            confirmButton.backgroundColor = UIColor(red: 0.906, green: 0.911, blue: 0.922, alpha: 1)
        }
    }
    
}



