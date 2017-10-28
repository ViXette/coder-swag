//
//  ViewController.swift
//  coder-swag
//
//  Created by ViXette on 28/10/2017.
//

import UIKit


class CategoriesVC: UIViewController, UITableViewDelegate, UITableViewDataSource {

	@IBOutlet weak var categoryTable: UITableView!
	

	override func viewDidLoad() {
		super.viewDidLoad()
		
		categoryTable.delegate = self
		categoryTable.dataSource = self
	}
	
	
	func tableView (_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return DataService.instance.getCategories().count
	}
	
	
	func tableView (_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		if let cell = tableView.dequeueReusableCell(withIdentifier: "CategoryCell") as? CategoryCell {
			cell.updateViews(category: DataService.instance.getCategories()[indexPath.row])
			
			return cell
		}
		
		return CategoryCell()
	}
	
	
	func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
		performSegue(withIdentifier: "toProductsVC", sender: DataService.instance.getCategories()[indexPath.row])
	}
	
	
	override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
		if let productsVC = segue.destination as? ProductsVC {
			assert(sender as? Category != nil)
			productsVC.initProducts(category: sender as! Category)
			
			let bar_button = UIBarButtonItem()
			bar_button.title = ""
			navigationItem.backBarButtonItem = bar_button
		}
	}

}

