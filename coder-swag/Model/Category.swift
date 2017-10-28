//
//  Category.swift
//  coder-swag
//
//  Created by ViXette on 28/10/2017.
//

import UIKit


struct Category {
	
	private(set) public var title: String
	private(set) public var image: UIImage
	
	
	init (title: String, image: UIImage) {
		self.title = title
		self.image = image
	}
	
}
