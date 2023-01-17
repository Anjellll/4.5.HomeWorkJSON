//
//  StoresCollectionViewCell.swift
//  4.5.HomeWork
//
//  Created by anjella on 16/1/23.
//

import UIKit

class StoresCollectionViewCell: UICollectionViewCell {
    public static let reusedID = String(describing: StoresCollectionViewCell.self)
    @IBOutlet private weak var storesCustomView: UIView!
    @IBOutlet private weak var storesImage: UIImageView!
    @IBOutlet private weak var storesNameLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
        func display(item: StoresDataModel, selected: StoresDataModel) {
            storesImage.image = UIImage(named: item.imageView)
            storesNameLabel.text = item.storesName
        }
    
    @IBInspectable
    private var cornerRadius: CGFloat {
        get { self.layer.cornerRadius } 
        set { self.layer.cornerRadius = newValue }
    }
    
    @IBInspectable
    private var contentColor: UIColor {
        get { self.backgroundColor ?? .clear }
        set { self.backgroundColor = newValue }
    }

    private func commonInit() {
        Bundle.main.loadNibNamed(String(describing: StoresCollectionViewCell.self), owner: self)
        addSubview(storesCustomView)
        storesCustomView.frame = bounds
        storesCustomView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
    }
}

