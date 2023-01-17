//
//  ProductDataModel.swift
//  4.5.HomeWork
//
//  Created by anjella on 16/1/23.
//

import UIKit


let productJson =  """
[
    {
         "productImageIcon": "image1",
         "productName": "Burger Craze",
         "ratingProduct": "4.6 (601)",
         "cuisineName": "American",
         "burgers": "Burgers",
         "freeDelivery": "Delivery: FREE",
         "priceDelivery": "Minimum: $10"
        },
        {
         "productImageIcon": "image.1.2",
         "productName": "Vegetarian Pizza",
         "ratingProduct": "4.6 (601)",
         "cuisineName": "Italan",
         "burgers": "Burgers",
         "freeDelivery": "Delivery: FREE",
         "priceDelivery": "Minimum: $10",
    },
]

"""

struct ProductDataModel: Decodable {
    let productImageIcon: String
    let productName: String
    let ratingProduct: String
    let cuisineName: String
    let burgers: String
    let freeDelivery: String
    let priceDelivery: String
}

//let productJson =  """
//[
//    {
//         "productImageIcon": "image1",
//         "productName": "Burger Craze",
//         "openClose": "OPEN",
//         "firstDot": "image2",
//         "timeDelivery": "15 - 20 min",
//         "ratingProductIcon": "image3",
//         "ratingProduct": "4.6 (601)",
//         "cuisineName": "American",
//         "burgers": ""Burgers"",
//         "costDelivery1": "Delivery: FREE",
//         "thirdDot": "image5",
//         "costDelivery2": "Minimum: $10",
//         "distanceIcon": "distance",
//         "dictance": "1.5 km away"
//        },
//        {
//         "productImageIcon": "image1.2",
//         "productName": "Vegetarian Pizza",
//         "openClose": "OPEN",
//         "firstDot": "image2",
//         "timeDelivery": "15 - 20 min",
//         "ratingProductIcon": "image3",
//         "ratingProduct": "4.6 (601)",
//         "cuisineName": "Italan",
//         "secondDot": "image4",
//         "burgers": "Burgers",
//         "costDelivery1": "Delivery: FREE",
//         "thirdDot": "image5",
//         "costDelivery2": "Minimum: $10",
//         "distanceIcon": "distance",
//         "dictance": "2.0 km away"
//    },
//]
//
//"""
