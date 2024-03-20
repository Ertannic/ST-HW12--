//
//  CellNames.swift
//  ST-HW12- Саралаев Ержан
//
//  Created by Ertannic Saralay on 20.03.2024.
//

import UIKit
import SnapKit


class CellNames: UICollectionViewCell {
    
    static let identifier = "СellNames"
    
    let cellNames = ["Недавние", "Тренировки", "Коротыш", "WhatsApp","Snapchat","CapCut", "Избранные", "Педро","Instagram","Pinterest", "Prequerl", "Instagram"]
    
    // MARK: - Initializers
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupViews() {
        
    }
    
    private func setupConstraints() {
        
    }
    
}
