//
//  NetworkstoresLayer.swift
//  4.5.HomeWork
//
//  Created by anjella on 17/1/23.
//

import Foundation

class StoreCategory {
    
    static let shared = StoreCategory()
    
    func parse(_ json: String) -> [StoresDataModel] {
        var productCategory = [StoresDataModel] ()
        let productCategoryData = Data(jsonStores.utf8)
        let decoder = JSONDecoder()
        
        do {
            let convertedData = try decoder.decode([StoresDataModel].self, from: productCategoryData)
            productCategory = convertedData
        } catch {
            print("Error is: \(error.localizedDescription)")
        }
        return productCategory
    }
}
