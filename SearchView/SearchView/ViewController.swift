//
//  ViewController.swift
//  SearchView
//
//  Created by 겸 on 2022/09/14.
//

import UIKit

class ViewController: UIViewController{
    
    private let mainView = UIView()
    
    private func setupView() {
        mainView.translatesAutoresizingMaskIntoConstraints = false
        mainView.backgroundColor = .white
        view.addSubview(mainView)
    }


    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupView()
        setUI()
    }


}


extension ViewController {
    
    
    // 검색 Title
    func setUI() {
        let searchLabel = UILabel()
        view.addSubview(searchLabel)
        searchLabel.text = "검색" // test를 위해서 출력할 라벨
        searchLabel.frame = CGRect(x: 0, y: 0, width: 46, height: 28)
        searchLabel.font = UIFont(name: "NanumGothicOTF-Bold", size: 24)
        searchLabel.font = searchLabel.font.withSize(24)
        searchLabel.textColor = .black
        
        
        searchLabel.translatesAutoresizingMaskIntoConstraints = false
        
        searchLabel.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 16).isActive = true
        searchLabel.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: 313).isActive = true
        searchLabel.topAnchor.constraint(equalTo:view.topAnchor, constant: 65).isActive = true
        
        // 검색창 버튼
        let searchButton = UIButton()
        view.addSubview(searchButton)
        
        searchButton.frame = CGRect(x: 0, y: 0, width: 343, height: 44)
        searchButton.backgroundColor = UIColor(red: 0.967, green: 0.967, blue: 0.967, alpha: 1)
        searchButton.setTitleColor(.lightGray, for: .normal)
        searchButton.titleLabel?.font = UIFont(name: "NanumGothicOTF", size: 14)

        
        searchButton.setTitle("아이템을 검색해 보세요", for: .normal)
        searchButton.setImage(UIImage(systemName: "magnifyingglass"), for: .normal)
        searchButton.tintColor = .lightGray
        searchButton.contentHorizontalAlignment = .left
        searchButton.imageEdgeInsets = UIEdgeInsets(top: 0, left: 13, bottom: 0, right: 0)
        searchButton.titleEdgeInsets = UIEdgeInsets(top: 0, left: 22, bottom: 0, right: 0)
        
        
        searchButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            searchButton.topAnchor.constraint(equalTo:view.topAnchor, constant: 109),
            searchButton.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -16),
            searchButton.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 16),
            searchButton.heightAnchor.constraint(equalToConstant: 44)
        ])

        searchButton.layer.cornerRadius = 6
        
        
        // 추천 키워드
        let recommendLabel = UILabel()
        view.addSubview(recommendLabel)
        
        recommendLabel.text = "추천 키워드"
        recommendLabel.textColor = .black
        recommendLabel.font = UIFont(name: "NanumGothic", size: 16)

        
        
        recommendLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            recommendLabel.topAnchor.constraint(equalTo: searchButton.bottomAnchor, constant: 24),
            recommendLabel.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 16)
        ])

        // 콜렉션 뷰
        
        let collectionView : UICollectionView = {
            let layout = UICollectionViewFlowLayout()
            let cv = UICollectionView(frame: .zero, collectionViewLayout: layout)
            return cv
        }()
        
        view.addSubview(collectionView)

        collectionView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            collectionView.topAnchor.constraint(equalTo: recommendLabel.bottomAnchor, constant: 21),
            collectionView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 26),
            collectionView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -26)
        ])
        
        collectionView.backgroundColor = .blue
        
        
    }
    

    
}
