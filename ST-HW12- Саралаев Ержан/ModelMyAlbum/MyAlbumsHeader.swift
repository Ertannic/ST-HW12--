//
//  MyAlbumsHeader.swift
//  ST-HW12- Саралаев Ержан
//
//  Created by Ertannic Saralay on 20.03.2024.
//

import UIKit
import SnapKit

class MyAlbumsHeader: UICollectionReusableView {
    
    static let identifier = "MyAlbumsHeader"
        
    // MARK: - Outlets
    
    lazy var title: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 25, weight: .heavy)
        return label
    }()
    
    private let lineView: UIView = {
        let view = UIView()
        view.backgroundColor = .systemGray3
        return view
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
        addSubview(lineView)
    }
    
    private func setupConstraints() {
        
        lineView.snp.makeConstraints { make in
            make.top.equalToSuperview() // Привязываем верхнюю границу к верху родительского представления
            make.leading.equalToSuperview() // Привязываем левую границу к левой границе родительского представления
            make.trailing.equalToSuperview().inset(-80) // Привязываем правую границу с отступом в 20 пунктов от правой границы
            make.height.equalTo(0.7) // Задаем фиксированную высоту линии
        }
        
        title.snp.makeConstraints { make in
            make.top.equalTo(lineView.snp.bottom).offset(8) // Отступ от нижней границы lineView
            make.leading.equalToSuperview() // Привязываем левую границу к левой границе родительского представления
            make.trailing.lessThanOrEqualToSuperview() // title может быть шире или равен родительскому представлению, но не превышать его
        }
    }
    override func prepareForReuse() {
        super.prepareForReuse()
        title.text = nil
    }
}

