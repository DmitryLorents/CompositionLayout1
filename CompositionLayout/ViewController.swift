//
//  ViewController.swift
//  CompositionLayout
//
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
   }
    
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

