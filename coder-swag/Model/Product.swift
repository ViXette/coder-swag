//
//  Product.swift
//  coder-swag
//
//  Created by ViXette on 28/10/2017.
//

import UIKit


struct Product {
	
	private(set) public var title: String
	private(set) public var price: String
	private(set) public var image: UIImage
	
	
	init (title: String, price: String, image: UIImage) {
		self.title = title
		self.price = price
		self.image = image
	}
	
}
