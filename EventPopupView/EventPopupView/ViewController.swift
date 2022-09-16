//
//  ViewController.swift
//  EventPopupView
//
//  Created by 겸 on 2022/09/16.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        configureButton()
    }
    
    let popUpButton = CustomButton(frame: CGRect(x: 0 , y: 0, width: 300, height: 100))
    
    @objc func buttonTapped(sender : UIButton) {
        debugPrint("버튼 클릭됨")
        
//        // 버튼 색 바꾸기
//        sender.backgroundColor = sender.backgroundColor == UIColor(red: 0.082, green: 0.451, blue: 0.996, alpha: 1) ? UIColor.gray : UIColor(red: 0.082, green: 0.451, blue: 0.996, alpha: 1)
//
//        if sender.backgroundColor == UIColor.gray {
//            sender.backgroundColor = UIColor(red: 0.082, green: 0.451, blue: 0.996, alpha: 1)
//        }
        
        let popUpViewController = PopUpViewController()
        popUpViewController.modalPresentationStyle = .overCurrentContext
        present(popUpViewController, animated: true, completion: nil)
    }
    

    
    
    
}

extension ViewController {
    
    func configureButton() {
        
        view.addSubview(popUpButton)

        popUpButton.translatesAutoresizingMaskIntoConstraints = false
        
        let margins = view.layoutMarginsGuide
        
        NSLayoutConstraint.activate([
            popUpButton.topAnchor.constraint(equalTo: margins.topAnchor, constant:100),
            popUpButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            popUpButton.leadingAnchor.constraint(equalTo: margins.leadingAnchor, constant: 100),
            popUpButton.trailingAnchor.constraint(equalTo: margins.trailingAnchor, constant: -100)
//            popUpButton.bottomAnchor.constraint(equalTo: margins.bottomAnchor, constant: -700)

        ])
        
//        popUpButton.center = view.center
        popUpButton.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        
        
        

    }
    
}



