//
//  DataService.swift
//  coder-swag
//
//  Created by ViXette on 28/10/2017.
//

import Foundation


class DataService {
	
	static let instance = DataService()
	
	private let categories = [
		Category(title: "SHIRTS", image: #imageLiteral(resourceName: "shirts")),
		Category(title: "HOODIES", image: #imageLiteral(resourceName: "hoodies")),
		Category(title: "HATS", image: #imageLiteral(resourceName: "hats")),
		Category(title: "DIGITAL", image: #imageLiteral(resourceName: "digital"))
	]
	
	
	func getCategories () -> [Category] {
		return categories
	}
	
}
