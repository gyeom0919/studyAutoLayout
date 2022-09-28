//
//  ViewController.swift
//  TermsOfServiceView
//
//  Created by 겸 on 2022/09/26.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var buttonForAll: checkBoxButton!
    @IBOutlet weak var button1: checkBoxButton!
    @IBOutlet weak var button2: requiredButton!
    @IBOutlet weak var button3: requiredButton!
    @IBOutlet weak var confirmButton: confirmButton!
    @IBOutlet weak var button4: checkBoxButton!
    
    
    var selected : Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //MARK: - 리액티브 배우고 수정

    }

  
    @IBAction func changeLastButton(_ sender: UIButton) {
        
        if(button2.isChecked == false && button3.isChecked == false){
            confirmButton.backgroundColor = .systemBlue
        }else{
            confirmButton.backgroundColor = UIColor(red: 0.906, green: 0.911, blue: 0.922, alpha: 1)
            
        }
        
    }
    
}



