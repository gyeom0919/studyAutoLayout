//
//  ViewController.swift
//  communityListView
//
//  Created by 겸 on 2022/09/23.
//

import UIKit
import SnapKit
import Then

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.view.backgroundColor = UIColor.systemYellow
        
        let titleLabel = UILabel().then{
            $0.text = "고객센터"
            $0.font = UIFont.systemFont(ofSize: 20)
        }
        
        let chatButton = UIButton().then{
            $0.setTitle("채팅", for: .normal)
            $0.titleLabel?.font = UIFont.systemFont(ofSize: 16)
        }
        
        let notificationAlarmView = UIView().then {
            $0.layer.cornerRadius = 0
            $0.backgroundColor = UIColor.systemRed
        }
        
        notificationAlarmView.snp.makeConstraints({
            $0.width.equalTo(23)
            $0.height.equalTo(23)
        })
        
        let notificationImg = UIImageView().then{
            $0.image = UIImage(systemName: "bell")
            $0.tintColor = .black

        }
        
        notificationImg.snp.makeConstraints( {
            $0.width.equalTo(40)
            $0.height.equalTo(30)
//            $0.size.equalTo(24)
        })
        
        let headerView = UIStackView().then{
            $0.addArrangedSubview(titleLabel)
            $0.addArrangedSubview(chatButton)
            $0.addArrangedSubview(notificationAlarmView)
            $0.addArrangedSubview(notificationImg)
        }
        
        view.addSubview(headerView)
        
        headerView.snp.makeConstraints({
            $0.top.equalTo(view.safeAreaLayoutGuide.snp.top)
            $0.left.equalTo(view.safeAreaLayoutGuide.snp.left).offset(16)
            
            $0.width.equalTo(375)
            $0.height.equalTo(44)
        })
        
        
    }
}




#if DEBUG

import SwiftUI

struct ViewControllerPresentable: UIViewControllerRepresentable {
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
    }
    
    func makeUIViewController(context: Context) -> some UIViewController {
        ViewController()
    }
}


struct ViewControllerPrepresentable_PreviewProvider : PreviewProvider {
    static var previews: some View {
        ViewControllerPresentable()
            .ignoresSafeArea()
    }
}

#endif


