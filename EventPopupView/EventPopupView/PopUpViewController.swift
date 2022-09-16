//
//  PopUpViewController.swift
//  EventPopupView
//
//  Created by 겸 on 2022/09/16.
//

import UIKit

class PopUpViewController: UIViewController {
    
    private let popUpView = UIView()
    private let dismissLButton = UIButton()
    private let titleLabel = UILabel()
    private let imageView = UIImageView()
    private let dismissRbutton = UIButton()
     
     override func viewDidLoad() {
         super.viewDidLoad()
         
         configurationView()
         configurationLeftButton()
         configurationTitle()
         configurationImage()
         configurationRightButton()
         
         // SetUp View
         view.backgroundColor = UIColor.black.withAlphaComponent(0.5)
         
     }
     
     @objc func didTapDismissButton(_ sender: UIButton) {
         dismiss(animated: true, completion: nil)
     }
 }

extension PopUpViewController {
    
    func configurationView() {
        popUpView.backgroundColor = UIColor.white
        view.addSubview(popUpView)
        
        popUpView.layer.cornerRadius = 10
        
        popUpView.translatesAutoresizingMaskIntoConstraints = false
        popUpView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        popUpView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        popUpView.widthAnchor.constraint(equalToConstant: view.frame.width).isActive = true
        popUpView.heightAnchor.constraint(equalToConstant: 434).isActive = true
    }
    
    func configurationTitle() {
        let titleLabel : UILabel = {
            let label = UILabel()
            label.text = "🎉 빡코딩 레스토랑 2주년 이벤트"
            label.textColor = .black
//            label.font = UIFont.boldSystemFont(ofSize: 20)
            label.font = UIFont(name: "NanumGothicBold", size: 20)
            
            return label
        }()
        
        view.addSubview(titleLabel)
        
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: popUpView.topAnchor, constant: 29),
            titleLabel.leadingAnchor.constraint(equalTo: popUpView.leadingAnchor, constant: 16)
        ])
    }
    
    func configurationImage() {
        let imageView = UIImageView(frame: CGRectMake(0, 0, 264, 264))
            
        let image = UIImage(named: "Sample")
        
        imageView.image = image
        
        view.addSubview(imageView)
        
        imageView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            imageView.topAnchor.constraint(equalTo: popUpView.topAnchor, constant: 68),
//            imageView.leadingAnchor.constraint(equalTo: popUpView.leadingAnchor, consstant: 16),
            imageView.centerXAnchor.constraint(equalTo: popUpView.centerXAnchor)
//            imageView.trailingAnchor.constraint(equalTo: popUpView.trailingAnchor, constant: 16),
//            imageView.bottomAnchor.constraint(equalTo: popUpView.bottomAnchor, constant: 16)
        ])
        
    }
    
    // LEFT BUTTON
    func configurationLeftButton(){
        dismissLButton.setTitleColor(UIColor.blue, for: .normal)
        dismissLButton.setTitle("다시 보지 않기", for: .normal)
        dismissLButton.addTarget(self, action: #selector(didTapDismissButton(_:)), for: .touchUpInside)
        dismissLButton.titleLabel?.font = UIFont(name: "NanumGothicExtraBold", size: 15)
        dismissLButton.layer.borderWidth = 1
        dismissLButton.layer.borderColor = UIColor.lightGray.cgColor
        dismissLButton.layer.cornerRadius = 6
        dismissLButton.setTitleColor(UIColor.black, for: .normal)
        
        
        
        popUpView.addSubview(dismissLButton)
        
        dismissLButton.translatesAutoresizingMaskIntoConstraints = false
        
        dismissLButton.bottomAnchor.constraint(equalTo: popUpView.bottomAnchor,  constant: -47).isActive = true
        dismissLButton.leadingAnchor.constraint(equalTo: popUpView.leadingAnchor, constant: 16).isActive = true
//        dismissLButton.trailingAnchor.constraint(equalTo: dismissRbutton.leadingAnchor, constant: -12).isActive = true
        dismissLButton.topAnchor.constraint(equalTo: popUpView.topAnchor, constant: 339).isActive = true
        dismissLButton.widthAnchor.constraint(equalToConstant: 167).isActive = true
        dismissLButton.heightAnchor.constraint(equalToConstant: 48).isActive = true
    }
    
    // RIGHT BUTTON
    func configurationRightButton(){
        dismissRbutton.setTitleColor(UIColor.blue, for: .normal)
        dismissRbutton.setTitle("24시간 보지 않기", for: .normal)
        dismissRbutton.addTarget(self, action: #selector(didTapDismissButton(_:)), for: .touchUpInside)
        
        dismissRbutton.titleLabel?.font = UIFont(name: "NanumGothicExtraBold", size: 15)

        
        dismissRbutton.layer.borderWidth = 1
        dismissRbutton.layer.borderColor = UIColor.lightGray.cgColor
        dismissRbutton.layer.cornerRadius = 6
        dismissRbutton.setTitleColor(UIColor.black, for: .normal)
        
        
        
        popUpView.addSubview(dismissRbutton)
        
        dismissRbutton.translatesAutoresizingMaskIntoConstraints = false
        
        dismissRbutton.bottomAnchor.constraint(equalTo: popUpView.bottomAnchor,  constant: -47).isActive = true
//        dismissRbutton.leadingAnchor.constraint(equalTo: popUpView.leadingAnchor, constant: 16).isActive = true
        dismissRbutton.trailingAnchor.constraint(equalTo: popUpView.trailingAnchor, constant: -16).isActive = true
        dismissRbutton.topAnchor.constraint(equalTo: popUpView.topAnchor, constant: 339).isActive = true
        dismissRbutton.widthAnchor.constraint(equalToConstant: 167).isActive = true
        dismissRbutton.heightAnchor.constraint(equalToConstant: 48).isActive = true
    }

}
