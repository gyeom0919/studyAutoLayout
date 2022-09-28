//
//  checkBoxButton.swift
//  TermsOfServiceView
//
//  Created by 겸 on 2022/09/26.
//

import UIKit

class checkBoxButton: UIButton {
    
    // 들어갈 이미지
    let checkedImage = UIImage(named: "Filled")
    let uncheckedImage = UIImage(named: "Square")
    
    // isChecked 초기값 false
    var isChecked: Bool = false {
        didSet {
            setNeedsLayout()
        }
    }

    
    override func awakeFromNib() {
//        self.addTarget(self, action:#selector(buttonClicked(sender:)), for: UIControl.Event.touchUpInside)
    }

    //
    required init?(coder aDecoder : NSCoder) {
        super.init(coder: aDecoder)!

        // 배경색, 테두리 세팅 but Image 정해줘서 필요없는 코드
        self.backgroundColor = UIColor(red: 0.965, green: 0.965, blue: 0.965, alpha: 1)
        self.layer.borderWidth = 1
        self.layer.borderColor = UIColor(red: 0.908, green: 0.908, blue: 0.908, alpha: 1).cgColor
        self.layer.cornerRadius = 4

        // 버튼 누를시 작동하는 코드 -> buttonClicked
        self.addTarget(self, action:#selector(buttonClicked(sender:)), for: UIControl.Event.touchUpInside)
    }

//    override func layoutSubviews() {
//        self.layoutSubviews()
//    }

    // 버튼 클릭 함수
    @objc func buttonClicked(sender: UIButton) {
        //        if sender == self {
        //            isChecked = !isChecked
        //        }
        
        // isChecked는 항상 같지않게 ( 거짓이면 참, 참이면 거짓 )
        isChecked = !isChecked
        
        // 만약 체크박스값이 참이면 체크, 거짓이면 빈 박스
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
