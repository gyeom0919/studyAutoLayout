//
//  PopUpViewController.swift
//  EventPopupView
//
//  Created by 겸 on 2022/09/16.
//

import UIKit

class PopUpViewController: UIViewController {
    
     private let popUpView = UIView()
     private let dismissButton = UIButton()
     
     override func viewDidLoad() {
         super.viewDidLoad()
         
         configurationView()
         
         // SetUp View
         view.backgroundColor = UIColor.black.withAlphaComponent(0.5)
         
         // SetUp PopUpView
       

         // SetUpDismiss Button
         dismissButton.setTitleColor(UIColor.blue, for: .normal)
         dismissButton.setTitle("Dismiss", for: .normal)
         dismissButton.addTarget(self, action: #selector(didTapDismissButton(_:)), for: .touchUpInside)
         popUpView.addSubview(dismissButton)
         
         // PopUpView AutoLayout

         
         // DismissButton AutoLayout
         dismissButton.translatesAutoresizingMaskIntoConstraints = false
         dismissButton.bottomAnchor.constraint(equalTo: popUpView.bottomAnchor).isActive = true
         dismissButton.leadingAnchor.constraint(equalTo: popUpView.leadingAnchor).isActive = true
         dismissButton.trailingAnchor.constraint(equalTo: popUpView.trailingAnchor).isActive = true
         dismissButton.heightAnchor.constraint(equalToConstant: 30).isActive = true
     }
     
     @objc func didTapDismissButton(_ sender: UIButton) {
         dismiss(animated: true, completion: nil)
     }
 }

extension PopUpViewController {
    
    func configurationView() {
        popUpView.backgroundColor = UIColor.yellow
        view.addSubview(popUpView)
        
        popUpView.translatesAutoresizingMaskIntoConstraints = false
        popUpView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        popUpView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        popUpView.widthAnchor.constraint(equalToConstant: view.).isActive = true
        popUpView.heightAnchor.constraint(equalToConstant: 200).isActive = true
    }
}
