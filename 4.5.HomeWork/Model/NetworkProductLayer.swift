//
//  NetworkProductLayer.swift
//  4.5.HomeWork
//
//  Created by anjella on 17/1/23.
//

import Foundation

class Product {
    
    static let shared = Product()
    
    func parse(_ json: String) -> [ProductDataModel] {
        var product = [ProductDataModel]()
        let productData = Data(productJson.utf8)
        let decoder = JSONDecoder()
        
        do {
            let convertedData = try decoder.decode([ProductDataModel].self, from: productData)
            product = convertedData
        } catch {
            print("Error is: \(error.localizedDescription)")
        }
        return product
    }
}
