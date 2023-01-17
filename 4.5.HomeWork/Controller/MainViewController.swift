//
//  ViewController.swift
//  4.5.HomeWork
//
//  Created by anjella on 16/1/23.
//

import UIKit

class MainViewController: UIViewController {
    
    @IBOutlet private weak var categoryCollectionView: UICollectionView!
    @IBOutlet private weak var storeCollectionView: UICollectionView!
    @IBOutlet weak var productTableView: UITableView!
    

        
    private var categoryDataArray: [CategoryDataModel] = []
    private var storesDatArray: [StoresDataModel] = []
    private var productDataArray: [ProductDataModel] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureCollectionView()
        configureTableView()
        
        categoryDataArray = Category.shared.parse(jsonCategory)
        storesDatArray = StoreCategory.shared.parse(jsonStores)
        productDataArray = Product.shared.parse(productJson)
        
    }
    
    private func configureCollectionView() {
        categoryCollectionView.dataSource = self
        categoryCollectionView.delegate = self
        categoryCollectionView.register(
            UINib(
                nibName: String(describing: CategoryCollectionViewCell.self),
                bundle: nil),
            forCellWithReuseIdentifier: CategoryCollectionViewCell.reusedID)
        
        storeCollectionView.dataSource = self
        storeCollectionView.delegate = self
        storeCollectionView.register(
            UINib(
                nibName: String(describing: StoresCollectionViewCell.self),
                bundle: nil),
            forCellWithReuseIdentifier: StoresCollectionViewCell.reusedID)
    }
    
    private func configureTableView() {
        productTableView.dataSource = self
        productTableView.delegate = self
        productTableView.register(
            UINib(
                nibName: String(describing: ProductTableViewCell.self),
                bundle: nil),
            forCellReuseIdentifier: ProductTableViewCell.reuseID)
    }
}

extension MainViewController: UICollectionViewDataSource {
    func collectionView(
        _ collectionView: UICollectionView,
        numberOfItemsInSection section: Int
    ) -> Int {
        if collectionView == categoryCollectionView {
            return categoryDataArray.count
        }else{
            return storesDatArray.count
        }
    }
    
    func collectionView(
        _ collectionView: UICollectionView,
        cellForItemAt indexPath: IndexPath
    ) -> UICollectionViewCell {
        if collectionView == categoryCollectionView {
            let cell = collectionView.dequeueReusableCell(
                withReuseIdentifier: "CategoryCollectionViewCell",
                for: indexPath) as! CategoryCollectionViewCell
            let data = categoryDataArray[indexPath.row]
            cell.display(item: data, selected: data)
            return cell
        }else{
            let cell = collectionView.dequeueReusableCell(
                withReuseIdentifier: "StoresCollectionViewCell",
                for: indexPath) as! StoresCollectionViewCell
            let data = storesDatArray[indexPath.row]
            cell.display(item: data, selected: data)
            return cell
        }
    }
}

extension MainViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(
        _ collectionView: UICollectionView,
          layout collectionViewLayout: UICollectionViewLayout,
        sizeForItemAt indexPath: IndexPath
    ) -> CGSize {
        if collectionView == categoryCollectionView {
            return CGSize(width: 20, height: 40)
        } else {
            return CGSize(width: 110, height: 130)
        }
    }
}

extension MainViewController: UITableViewDataSource {
    func tableView(
        _ tableView: UITableView,
        numberOfRowsInSection section: Int
    ) -> Int {
        return productDataArray.count
    }
    
    func tableView(
        _ tableView: UITableView,
        cellForRowAt indexPath: IndexPath
    ) -> UITableViewCell {
        let cell = productTableView.dequeueReusableCell(
            withIdentifier: String(
                describing: ProductTableViewCell.reuseID
            )
        ) as! ProductTableViewCell
        
        let data = productDataArray[indexPath.row]
        cell.display(item: data)
        
        return cell
    }
}

extension MainViewController: UITableViewDelegate {
    func tableView(
        _ tableView: UITableView,
        heightForRowAt indexPath: IndexPath)
    -> CGFloat {
        return 300
    }
}
