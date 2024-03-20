//
//  CompositionalCell.swift
//  ST-HW12- Саралаев Ержан
//
//  Created by Ertannic Saralay on 19.03.2024.
//

import UIKit

class CompositionalCell: UICollectionViewCell {
    
    static let identifier = "CompositionalCell"
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    required init?(coder: NSCoder) {
        fatalError("ERORR")
    }
    
    private func commonInit() {
           layer.cornerRadius = 10
       }
    
}
