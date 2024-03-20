//
//  MyAlbumsHeader.swift
//  ST-HW12- Саралаев Ержан
//
//  Created by Ertannic Saralay on 20.03.2024.
//

import UIKit

class MyAlbumsHeader: UICollectionReusableView {
    
    static let identifier = "MyAlbumsHeader"
        
    // MARK: - Outlets
    
    lazy var title: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 25, weight: .heavy)
        return label
    }()
    
    
    // MARK: - Initializers
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        clipsToBounds = true
        setupViews()
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("Erorr in cell")
    }
    
    // MARK: - Setups
    
    private func setupViews() {
        addSubview(title)
    }
    
    private func setupConstraints() {
        title.snp.makeConstraints { make in
            make.bottom.equalTo(self)
            make.left.equalTo(self)
        }
    }
    override func prepareForReuse() {
        super.prepareForReuse()
        title.text = nil
    }
}

