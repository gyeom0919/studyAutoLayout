//
//  confirmButton.swift
//  TermsOfServiceView
//
//  Created by 겸 on 2022/09/26.
//

import UIKit

class confirmButton: UIButton {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    
    required init(coder aDecoder : NSCoder){
        super.init(coder: aDecoder)!
        
        self.tintColor = UIColor(red: 0.593, green: 0.651, blue: 0.8, alpha: 1)

        self.backgroundColor = UIColor(red: 0.906, green: 0.911, blue: 0.922, alpha: 1)
        
        self.layer.cornerRadius = 12
    }

}
