//
//  TextCell.swift
//  CompositionLayout
//
//  Created by Дмитрий Лоренц on 24.04.2023.
//

import UIKit

class TextCell: UICollectionViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        configure()
    }
    static let reuseIdentifier = "TextCellID"
    
    let label = UILabel()
    
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
        label.font = .preferredFont(forTextStyle: .caption1)
        contentView.addSubview(label)
        
        
        //MARK: - Set constraints
        let offset: CGFloat = 10
        NSLayoutConstraint.activate([
            label.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: offset),
            label.topAnchor.constraint(equalTo: contentView.topAnchor, constant: offset),
            label.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -offset),
            label.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -offset)
        ])
    }
}
