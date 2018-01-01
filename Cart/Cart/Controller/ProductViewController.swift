//
//  ProductViewController.swift
//  Cart
//
//  Created by offline on 29/12/2017.
//  Copyright © 2017 JoP. All rights reserved.
//

import UIKit

class ProductViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    private(set) public var products = [Product]()
    @IBOutlet weak var productCollectionView: UICollectionView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        productCollectionView.dataSource = self
        productCollectionView.delegate = self
        // Do any additional setup after loading the view.
    }
    
    func initProducts(category: Category) {
        products = DataService.instance.getProduct(forCategoryTitle: category.title)
        navigationItem.title = category.title
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return products.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProductCollectionViewCell", for: indexPath) as? ProductCollectionViewCell {
            cell.updateViews(product: products[indexPath.row])
            return cell
        } else {
            return ProductCollectionViewCell()
        }
    }
}
