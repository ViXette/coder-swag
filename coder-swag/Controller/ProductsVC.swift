//
//  ProductsVC.swift
//  coder-swag
//
//  Created by ViXette on 29/10/2017.
//

import UIKit


class ProductsVC: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
	
	@IBOutlet weak var productsCollection: UICollectionView!
	
	private(set) public var products = [Product]()
	

	override func viewDidLoad() {
		super.viewDidLoad()
		
		productsCollection.delegate = self
		productsCollection.dataSource = self
	}

	
	func initProducts (category: Category) {
		products = DataService.instance.getProducts(forCategoryTitle: category.title)
		
		navigationItem.title = category.title
	}
	
	
	func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
		return products.count
	}
	
	
	func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
		if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProductCell", for: indexPath) as? ProductCell {
			cell.updateViews(product: products[indexPath.row])
			
			return cell
		}
		
		return ProductCell()
	}

}
