//
//  StoresDataModel.swift
//  4.5.HomeWork
//
//  Created by anjella on 16/1/23.
//

import UIKit

let jsonStores = """
    [
        {
         "storesName": "Takeaways",
         "imageView": "product1"
        },
        {
         "storesName": "Grocery",
         "imageView": "product2"
        },
        {
         "storesName": "Convenience",
         "imageView": "product3"
        },
        {
         "storesName": "Pharmacy",
         "imageView": "product4"
       }
    ]

"""

struct StoresDataModel: Decodable {
    let imageView: String
    let storesName: String
}
