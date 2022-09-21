//
//  announceLabel.swift
//  ColorModeChangeView
//
//  Created by 겸 on 2022/09/21.
//

import UIKit

class announceLabel: UILabel {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUp()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setUp()
    }
    
    func setUp() {
        
        let announceLabel : UILabel = {
            let label = UILabel()
            label.text = "화면 모드는 [메뉴 > 설정]에서 언제든지 변경하실 수 있습니다."
            return label
            
        }()
        
        announceLabel.font = UIFont(name: "NanumGothicBold", size: 16)
        announceLabel.lineBreakMode = .byWordWrapping
        announceLabel.numberOfLines = 0
        self.addSubview(announceLabel)
        
        // ~.snp.makeContraints  ~ 관한 Snapkit을 사용하여 제약조건 만들기
        announceLabel.snp.makeConstraints {
            make in
            
            // 높이와 넓이
            make.height.equalTo(41)
            make.width.equalTo(216)
            
            // 왼쪽 오른쪽 거리
            //            make.left.equalTo(view.snp.left).offset(83)
            //            make.right.equalTo(view.snp.right).offset(85)
            
            // 가운데 정렬
            make.centerX.equalTo(self.center)
            
            // 위에서 132만큼
//            make.top.equalTo(self.snp.top).offset(160)
        }
    }
}
