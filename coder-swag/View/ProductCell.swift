//
//  ProductCell.swift
//  coder-swag
//
//  Created by ViXette on 28/10/2017.
//

import UIKit


class ProductCell: UICollectionViewCell {
	
	@IBOutlet weak var productImage: UIImageView!
	@IBOutlet weak var productTitle: UILabel!
	@IBOutlet weak var productPrice: UILabel!
	
	
	func updateViews (product: Product) {
		productImage.image = product.image
		productTitle.text = product.title
		productPrice.text = product.price
	}
	
}
