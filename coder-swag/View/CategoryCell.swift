//
//  CategoryCell.swift
//  coder-swag
//
//  Created by ViXette on 28/10/2017.
//

import UIKit


class CategoryCell: UITableViewCell {
	
	@IBOutlet weak var categoryImage: UIImageView!
	@IBOutlet weak var categoryTitle: UILabel!


	func updateViews (category: Category) {
		categoryImage.image = category.image
		categoryTitle.text = category.title
	}

}
