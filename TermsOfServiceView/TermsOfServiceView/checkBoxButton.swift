//
//  checkBoxButton.swift
//  TermsOfServiceView
//
//  Created by 겸 on 2022/09/26.
//

import UIKit

class checkBoxButton: UIButton {
    
    let checkedImage = UIImage(named: "Filled")
    let uncheckedImage = UIImage(named: "Square")
    
    var isChecked: Bool = false {
         didSet {
             if isChecked == true {
                 self.setImage(checkedImage, for: UIControl.State.normal)
             } else {
                 self.setImage(uncheckedImage, for: UIControl.State.normal)
             }
         }
     }
   
    override func awakeFromNib() {
        self.addTarget(self, action:#selector(buttonClicked(sender:)), for: UIControl.Event.touchUpInside)
        self.isChecked = false

    }

    @objc func buttonClicked(sender: UIButton) {
        if sender == self {
            isChecked = !isChecked
//            isChecked = true
        }
        
        if(self.isChecked == true) {

            debugPrint("2 Clicked")
        }
        
        
        
    }
    
    

  
    required init?(coder aDecoder : NSCoder) {
        super.init(coder: aDecoder)!
        
        self.backgroundColor = UIColor(red: 0.965, green: 0.965, blue: 0.965, alpha: 1)
        self.layer.borderWidth = 1
        self.layer.borderColor = UIColor(red: 0.908, green: 0.908, blue: 0.908, alpha: 1).cgColor
        self.layer.cornerRadius = 4
    }

}
