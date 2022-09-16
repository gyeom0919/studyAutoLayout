//
//  CustomButton.swift
//  EventPopupView
//
//  Created by 겸 on 2022/09/16.
//

import Foundation
import UIKit

class CustomButton : UIButton {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.backgroundColor = UIColor(red: 0.082, green: 0.451, blue: 0.996, alpha: 1)
        self.setTitle("팝업창 띄우기", for: .normal)
        self.setTitleColor(.white, for: .normal)
        self.layer.cornerRadius = 8
        
        let backgroundImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
    
        self.setBackgroundImage(backgroundImage, for: state)
        
        
    
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
