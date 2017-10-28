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
	
	private let hats = [
		Product(title: "Devslopes Logo Graphic Beanie", price: "$18", image: #imageLiteral(resourceName: "hat01")),
		Product(title: "Devslopes Logo Hat Black", price: "$22", image: #imageLiteral(resourceName: "hat02")),
		Product(title: "Devslopes Logo Hat White", price: "$22", image: #imageLiteral(resourceName: "hat03")),
		Product(title: "Devslopes Logo Snapback", price: "$20", image: #imageLiteral(resourceName: "hat04"))
	]
	
	private let hoodies = [
		Product(title: "Devslopes Logo Hoodie Grey", price: "$32", image: #imageLiteral(resourceName: "hoodie01")),
		Product(title: "Devslopes Logo Hoodie Red", price: "$32", image: #imageLiteral(resourceName: "hoodie02")),
		Product(title: "Devslopes Hoodie Grey", price: "$32", image: #imageLiteral(resourceName: "hoodie03")),
		Product(title: "Devslopes Hoodie Black", price: "$32", image: #imageLiteral(resourceName: "hoodie04")),
		
		]
	
	private let shirts = [
		Product(title: "Devslopes Logo Shirt Black", price: "$18", image: #imageLiteral(resourceName: "shirt01")),
		Product(title: "Devslopes Badge Shirt Light Grey", price: "$19", image: #imageLiteral(resourceName: "shirt02")),
		Product(title: "Devslopes Logo Shirt Red", price: "$18", image: #imageLiteral(resourceName: "shirt03")),
		Product(title: "Hustle Delegate Grey", price: "$18", image: #imageLiteral(resourceName: "shirt04")),
		Product(title: "Kickflip Studios Black", price: "$18", image: #imageLiteral(resourceName: "shirt05"))
	]
	
	private let digitalGoods = [Product]()
	
	
	func getCategories () -> [Category] {
		return categories
	}
	
	
	func getProducts (forCategoryTitle title: String) -> [Product] {
		switch title {
		case "HATS":
			return hats
		case "HOODIES":
			return hoodies
		case "SHIRTS":
			return shirts
		case "DIGITAL":
			return digitalGoods
		default:
			return shirts
		}
	}
	
}
