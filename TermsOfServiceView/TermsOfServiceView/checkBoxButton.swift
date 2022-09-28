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
            setNeedsLayout()
        }
    }

    override func awakeFromNib() {
        // 나 이 메소드 잘 몰라...ㅠ 일단 안쓰고 해볼게요
//        self.addTarget(self, action:#selector(buttonClicked(sender:)), for: UIControl.Event.touchUpInside)
    }

    required init?(coder aDecoder : NSCoder) {
        super.init(coder: aDecoder)!

        self.backgroundColor = UIColor(red: 0.965, green: 0.965, blue: 0.965, alpha: 1)
        self.layer.borderWidth = 1
        self.layer.borderColor = UIColor(red: 0.908, green: 0.908, blue: 0.908, alpha: 1).cgColor
        self.layer.cornerRadius = 4

        self.addTarget(self, action:#selector(buttonClicked(sender:)), for: UIControl.Event.touchUpInside)
    }

//    override func layoutSubviews() {
//        self.layoutSubviews()


//    }

    @objc func buttonClicked(sender: UIButton) {
        // sender를 self와 비교하는 이유가 무엇일까요??(나 잘 모름,,,)
        //        if sender == self {
        //            isChecked = !isChecked
        //        }
        isChecked = !isChecked
        
        if isChecked == true {
            self.setImage(checkedImage, for: UIControl.State.normal)
        } else {
            self.setImage(uncheckedImage, for: UIControl.State.normal)
        }

        //        if(self.isChecked == true) {
        //
        //            debugPrint("2 Clicked")
        //        }
    }
}
