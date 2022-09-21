//
//  ViewController.swift
//  ColorModeChangeView
//
//  Created by 겸 on 2022/09/20.
//

import UIKit
import SnapKit

class ViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setItem()
    }
    
    private let titleLabel = UILabel()
    private let announceLabel = UILabel()
    private let darkModeImage = UIImageView()
    private let lightModeImage = UIImageView()
    private let leftRadioButton = UIButton()
    private let rightRadioButton = UIButton()
    
    // LeftButton 눌렸을 시
    @objc func leftButtonClicked(_ sender : UIButton) {
        
            sender.setImage(UIImage(named: "radio_filled"), for: .normal)
            rightRadioButton.setImage(UIImage(named: "radio"), for: .normal)
        
//        leftRadioButton.image = UIImage(named: "radio_filled")
        print("left clicked")
    }
    
    //  RightButton 눌렸을 시
    @objc func rightButtonClicked(_ sender : UIButton) {
        
            sender.setImage(UIImage(named: "radio_filled"), for: .normal)
            leftRadioButton.setImage(UIImage(named: "radio"), for: .normal)
        
//        leftRadioButton.image = UIImage(named: "radio_filled")
        print("right clicked")
    }


}

extension ViewController {
    
    func setUI(){
        setItem()
    }
    
    func setItem(){
        
        // Title Label
        
        let titleLabel : UILabel = {
            let label = UILabel()
            label.text = "사용하실 모드를 선택해주세요!"
            return label
            
        }()
        
        titleLabel.font = UIFont(name: "NanumGothicExtraBold", size: 30)
        titleLabel.lineBreakMode = .byWordWrapping
        titleLabel.numberOfLines = 0
        self.view.addSubview(titleLabel)
        
        // ~.snp.makeContraints  ~ 관한 Snapkit을 사용하여 제약조건 만들기
        titleLabel.snp.makeConstraints {
            make in
            
            // 높이와 넓이
            make.height.equalTo(82)
            make.width.equalTo(207)
            
            // 왼쪽 오른쪽 거리
//            make.left.equalTo(view.snp.left).offset(83)
//            make.right.equalTo(view.snp.right).offset(85)
        
            // 가운데 정렬
            make.centerX.equalTo(self.view)
            
            // 위에서 132만큼
            make.top.equalTo(view.snp.top).offset(132)
        }
        
        
        // Announce Label
        
        let announceLabel : UILabel = {
            let label = UILabel()
            label.text = "화면 모드는 [메뉴 > 설정]에서 언제든지 변경하실 수 있습니다."
            label.textColor = .red
            return label
            
        }()
        
        announceLabel.font = UIFont(name: "NanumGothicBold", size: 16)
        announceLabel.lineBreakMode = .byWordWrapping
        announceLabel.numberOfLines = 0
        self.view.addSubview(announceLabel)
        
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
            make.centerX.equalTo(self.view)
            make.top.equalTo(titleLabel.snp.bottom).offset(12)
        }
        // DarkMode Image
        let darkMode = "dark_mode"
        let imagedark = UIImage(named: darkMode)
        let darkModeImage = UIImageView(image: imagedark)
        self.view.addSubview(darkModeImage)
        
        darkModeImage.snp.makeConstraints {
            make in
            make.height.equalTo(153)
            make.width.equalTo(124)
//
            make.left.equalTo(view.snp.left).offset(44)
//            make.right.equalTo(view.snp.right).offset(-207)
            make.top.equalTo(announceLabel.snp.bottom).offset(28)
//            make.bottom.equalTo(view.snp.bottom).offset(368)

        }
        
        // LightMode Image
        
        let lightMode = "light_mode"
        let imagelight = UIImage(named: lightMode)
        let lightModeImage = UIImageView(image: imagelight)
        self.view.addSubview(lightModeImage)
        
        lightModeImage.snp.makeConstraints {
            make in
            make.height.equalTo(153)
            make.width.equalTo(124)
//
//            make.left.equalTo(v.snp.right).offset(39)
            make.right.equalTo(view.snp.right).offset(-44)
            make.top.equalTo(announceLabel.snp.bottom).offset(28)
//            make.bottom.equalTo(view.snp.bottom).offset(368)
        }
        
        // DarkMode Label
        
        let darkModeLabel : UILabel = {
            let label = UILabel()
            label.text = "다크 모드"
            label.font = UIFont(name: "NanumGothicBold", size:  20)
            return label
        }()
        
        view.addSubview(darkModeLabel)
        
        darkModeLabel.snp.makeConstraints {
            make in
            make.top.equalTo(darkModeImage.snp.bottom).offset(20)
            make.left.equalTo(view.snp.left).offset(65)
        }
        
        // LightMode Label
        
        let lightModeLabel : UILabel = {
            let label = UILabel()
            label.text = "라이트 모드"
            label.font = UIFont(name: "NanumGothicBold", size:  20)
            return label
        }()
        
        view.addSubview(lightModeLabel)
        
        lightModeLabel.snp.makeConstraints {
            make in
            make.top.equalTo(lightModeImage.snp.bottom).offset(20)
            make.right.equalTo(view.snp.right).offset(-55.5)
        }
    
        // Left Radio Button
        let leftRadioButton = UIButton(type: .custom)
        leftRadioButton.setImage(UIImage(named: "radio"), for: .normal)
        
        view.addSubview(leftRadioButton)
        
        leftRadioButton.addTarget(self, action: #selector(leftButtonClicked), for: .touchUpInside)
    
        leftRadioButton.snp.makeConstraints{
            make in
            make.top.equalTo(darkModeLabel.snp.bottom).offset(20)
            make.left.equalTo(view.snp.left).offset(91)
        }
        
        // Right Radio Button
        let rightRadioButton = UIButton(type: .custom)
        rightRadioButton.setImage(UIImage(named: "radio"), for: .normal)
        
        view.addSubview(rightRadioButton)
        
        rightRadioButton.addTarget(self, action: #selector(rightButtonClicked), for: .touchUpInside)

    
        rightRadioButton.snp.makeConstraints{
            make in
            make.top.equalTo(lightModeLabel.snp.bottom).offset(20)
            make.right.equalTo(view.snp.right).offset(-91)
        }
        
    }
}



