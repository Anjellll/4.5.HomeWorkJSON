//
//  ProductTableViewCell.swift
//  4.5.HomeWork
//
//  Created by anjella on 16/1/23.
//

import UIKit

class ProductTableViewCell: UITableViewCell {
    public static let reuseID = String(describing: ProductTableViewCell.self)
    
    @IBOutlet private weak var productIconView: UIImageView!
    @IBOutlet private weak var productNameLabel: UILabel!
    @IBOutlet private weak var ratingLabel: UILabel!
    @IBOutlet private weak var cuisineNameLabel: UILabel!
    @IBOutlet private weak var burgersLabel: UILabel!
    @IBOutlet private weak var freeDeliveryLabel: UILabel!
    @IBOutlet private weak var priceDeliveryLabel: UILabel!
    
    func display(item: ProductDataModel) {
        productIconView.image = UIImage(named: item.productImageIcon)
        productNameLabel.text = item.productName
        ratingLabel.text = item.ratingProduct
        cuisineNameLabel.text = item.cuisineName
        burgersLabel.text = item.burgers
        freeDeliveryLabel.text = item.freeDelivery
        priceDeliveryLabel.text = item.priceDelivery
    }
    
}
