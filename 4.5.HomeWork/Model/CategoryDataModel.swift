//
//  CategoryDataModel.swift
//  4.5.HomeWork
//
//  Created by anjella on 16/1/23.
//


import UIKit

let jsonCategory = """
        [
            {
             "dataHorizantally": "Delivery",
             "imageView": "delivery"
            },
            {
             "dataHorizantally": "Pickup",
             "imageView": "pickup"
            },
            {
             "dataHorizantally": "Catering",
             "imageView": "catering"
            },
            {
             "dataHorizantally": "Curbside",
             "imageView": "curbside"
           }
        ]

    """


struct CategoryDataModel: Decodable {
    let imageView: String
    let dataHorizantally: String
}
