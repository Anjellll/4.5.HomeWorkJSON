//
//  NetworkCategoryLayer.swift
//  4.5.HomeWork
//
//  Created by anjella on 17/1/23.
//

import Foundation

class Category {
    
    static let shared = Category()
    
    func parse(_ json: String) -> [CategoryDataModel] {
        var serviceCategory = [CategoryDataModel] ()
        let serviceCategoryData = Data(jsonCategory.utf8)
        let decoder = JSONDecoder()
        
        do {
            let convertedData = try decoder.decode([CategoryDataModel].self, from: serviceCategoryData)
            serviceCategory = convertedData
        } catch {
            print("Error is: \(error.localizedDescription)")
        }
        return serviceCategory
    }
}
