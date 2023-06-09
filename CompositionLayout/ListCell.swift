//
//  ListCell.swift
//  CompositionLayout
//
//  Created by Дмитрий Лоренц on 24.04.2023.
//

import UIKit

class ListCell: UICollectionViewCell {
    static let reuseIdentifier = "listCellID"
    
    let label = UILabel()
    let accessoryImageView = UIImageView()
    let separatorView = UIView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configure() {
        label.translatesAutoresizingMaskIntoConstraints = false
        label.adjustsFontForContentSizeCategory = true
        label.font = .preferredFont(forTextStyle: .body)
        contentView.addSubview(label)
        
        separatorView.translatesAutoresizingMaskIntoConstraints = false
        separatorView.backgroundColor = .lightGray
        contentView.addSubview(separatorView)
        
        selectedBackgroundView = UIView()
        selectedBackgroundView?.backgroundColor = .lightGray.withAlphaComponent(0.3)
        
        accessoryImageView.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(accessoryImageView)
        
        let rtl = effectiveUserInterfaceLayoutDirection == .rightToLeft
        let chevronImageName = rtl ? "chevron.left" : "chevron.right"
        let chevronImage = UIImage(systemName: chevronImageName)
        accessoryImageView.image = chevronImage
        accessoryImageView.tintColor = .lightGray.withAlphaComponent(0.7)
        
        //MARK: - Set constraints
        let offset: CGFloat = 10
        NSLayoutConstraint.activate([
            label.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: offset),
            label.topAnchor.constraint(equalTo: contentView.topAnchor, constant: offset),
            label.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -offset),
            label.trailingAnchor.constraint(equalTo: accessoryImageView.leadingAnchor, constant: -offset)
            ])
//        label.snp.makeConstraints { make in
//            make.leading.top.equalToSuperview().inset(offset)
//            make.bottom.equalToSuperview().inset(-offset)
//            make.trailing.equalTo(accessoryImageView.snp.leading).inset(-offset)
//        }
//
//        accessoryImageView.snp.makeConstraints { make in
//            make.centerY.equalToSuperview()
//            make.width.equalTo(13)
//            make.height.equalTo(20)
//            make.trailing.equalToSuperview().inset(-offset)
//        }
//
//        separatorView.snp.makeConstraints { make in
//            make.leading.equalToSuperview().inset(offset)
//            make.bottom.equalToSuperview()
//            make.trailing.equalToSuperview().inset(-offset)
//            make.height.equalTo(0.5)
//        }
    }
    
}
