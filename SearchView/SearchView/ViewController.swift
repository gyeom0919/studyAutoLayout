//
//  ViewController.swift
//  SearchView
//
//  Created by 겸 on 2022/09/14.
//

import UIKit

class ViewController: UIViewController{
    
    let recommendKeywords  = ["빡코딩", "코딩","오늘도 빡코딩","할라피뇨","코딩","빡코딩","버거킹","돈까스","치즈","오므라이스","핫도그","아이스아메리카노"]
    
    let popularKeywords = ["빡코딩", "오늘도 빡코딩", "버거킹", "오므라이스", "핫도그", "아이스크림", "치즈", "빡코딩", "빡코딩", "오늘도 빡코딩", "버거킹", "오므라이스", "핫도그", "아이스크림","치즈", "빡코딩", "빡코딩", "오늘도 빡코딩"]
    
    var recommendkeyLabel : UILabel!
    
    let cellID = "Cell"

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
        recommendLabel.font = UIFont(name: "NanumGothicOTF-Bold", size: 16)
        recommendLabel.font = recommendLabel.font.withSize(16)

        
        
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
            collectionView.topAnchor.constraint(equalTo: recommendLabel.bottomAnchor, constant: 11),
            collectionView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 15),
            collectionView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -35),
            collectionView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -540)
        ])
        
                
        collectionView.register(KeywordCell.self, forCellWithReuseIdentifier: cellID)
        
        collectionView.dataSource = self
        collectionView.delegate = self
        
        // 인기 검색어
        let popularLabel = UILabel()
        view.addSubview(popularLabel)
        
        popularLabel.text = "인기 검색어"
        popularLabel.textColor = .black
        popularLabel.font = UIFont(name: "NanumGothicOTF-Bolds", size: 16)
        popularLabel.font = popularLabel.font.withSize(16)


        
        
        popularLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            popularLabel.topAnchor.constraint(equalTo: collectionView.bottomAnchor, constant: 24),
            popularLabel.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 16)
        ])
        
        // 테이블 뷰
        
        let tableView = UITableView()
        
        view.addSubview(tableView)
        
        tableView.delegate = self
        tableView.dataSource = self
        
        tableView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: popularLabel.bottomAnchor, constant: 10),
            tableView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 0),
            tableView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 284 ),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 20)
        ])
        
        
        tableView.register(UITableViewCell.self
                           , forCellReuseIdentifier: "cell")
        
        // 테이블 뷰 세퍼레이터 --- 라인 없애기
        tableView.separatorStyle = .none
        
        

    }
    
    
    
}

extension ViewController : UICollectionViewDataSource {

    
    // 콜렉션 뷰 ( Label Cell )
    
    // Cell의 갯수
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        let count = recommendKeywords.count
        return count
    }
    
    // Cell 꾸미기
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellID, for: indexPath) as! KeywordCell
        
        
        cell.label?.text = recommendKeywords[indexPath.row]
            
        //셀의 색
        cell.backgroundColor = UIColor.white
        //셀 가장자리
        cell.layer.cornerRadius = 8
        cell.layer.borderWidth = 1
        cell.layer.borderColor = UIColor(red: 0.883, green: 0.861, blue: 0.861, alpha: 1).cgColor
        return cell
    }
    
}

extension ViewController : UICollectionViewDelegate{
    
}

// Cell의 사이즈를 정한다
extension ViewController : UICollectionViewDelegateFlowLayout {
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        // Cell 사이즈가 글자간격 + 20, 높이 24 (lable과 겹치지 않도록)
        let cellSize = CGSize(width: recommendKeywords[indexPath.item].size(withAttributes: [NSAttributedString.Key.font : UIFont.systemFont(ofSize: 12)]).width + 20, height: 24)
        return cellSize
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 0, left: 0, bottom: 10, right: 60)
    }
    
    // 상하 간격
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 10
    }
    
}

extension ViewController : UITableViewDelegate, UITableViewDataSource {
    
    // popularKeywords 배열에 해당하는 갯수만큼 cell 생성
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return popularKeywords.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let tableCell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        // 셀 텍스트 넣기
        // popularKeywords에 있는 배열을 넣어줌
        tableCell.textLabel?.text = popularKeywords[indexPath.row]
        tableCell.textLabel?.textAlignment = .left
        tableCell.textLabel?.font = UIFont.systemFont(ofSize: 12)
        tableCell.textLabel?.textColor = UIColor.gray
    
        tableCell.selectionStyle = .none
        
        return tableCell
    }
    
    // 셀 높이
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 26
    }
    


}

