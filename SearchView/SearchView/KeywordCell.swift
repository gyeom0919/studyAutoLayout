//
//  KeywordCell.swift
//  SearchView
//
//  Created by 겸 on 2022/09/14.
//

import UIKit

class KeywordCell: UICollectionViewCell {
    
    var label: UILabel?
    let recommendKeywords = ["빡코딩", "코딩","오늘도 빡코딩","할라피뇨","코딩","빡코딩","버거킹","돈까스","치즈","오므라이스","핫도그","아이스아메리카노"]
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        
        label = UILabel(frame: CGRect(x: 0, y: 0, width: self.bounds.width, height: self.bounds.height))
        //Customsize label
        label?.text =  "why"
        label?.textAlignment = .center
//        label?.sizeToFit()
        label?.textColor = UIColor.gray
        label?.font = UIFont(name: "NanumGothicOTF", size: 24)
        label?.font = label?.font.withSize(12)
        
        contentView.addSubview(label!)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override var bounds: CGRect {
        didSet {
            contentView.frame = bounds
        }
    }

}
