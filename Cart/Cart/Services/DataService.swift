//
//  DataService.swift
//  Cart
//
//  Created by offline on 28/12/2017.
//  Copyright © 2017 JoP. All rights reserved.
//

import Foundation

class DataService {
    static let instance = DataService()
    
    private let categories = [
        Category(title: "SHIRTS", imageName: "shirts.png"),
        Category(title: "HOODIES", imageName: "hoodies.png"),
        Category(title: "HATS", imageName: "hats.png"),
        Category(title: "DIGITAL", imageName: "digital.png")
    ]
    
    private let hats = [
        Product(title: "Devslopes Logo Graphic Beanie", price: "$18", imageName: "hat01.png"),
        Product(title: "Devslopes Logo Graphic Hat Black", price: "$22", imageName: "hat02.png"),
        Product(title: "Devslopes Logo Graphic Hat White", price: "$22", imageName: "hat03.png"),
        Product(title: "Devslopes Logo Graphic Snapback", price: "$20", imageName: "hat04.png")
    ]
    
    private let hoodies = [
        Product(title: "Devslopes Logo Hoodie Grey", price: "$32", imageName: "hoodie01.png"),
        Product(title: "Devslopes Logo Hoodie Red", price: "$32", imageName: "hoodie02.png"),
        Product(title: "Devslopes Logo Hoodie Grey", price: "$32", imageName: "hoodie03.png"),
        Product(title: "Devslopes Logo Hoodie Black", price: "$32", imageName: "hoodie04.png")
    ]
    
    private let shirts = [
        Product(title: "Devslopes Logo Shirt Black", price: "$18", imageName: "shirt01.png"),
        Product(title: "Devslopes Logo Bage Shirt Light Grey", price: "$22", imageName: "shirt02.png"),
        Product(title: "Devslopes Logo Shirt Red", price: "$22", imageName: "shirt03.png"),
        Product(title: "Hustle Delegate", price: "$20", imageName: "shirt04.png"),
        Product(title: "Kickflip Studios Black", price: "$20", imageName: "shirt05.png")
    ]
    
    private let digitalGoods = [Product]()
    
    func getCategories() -> [Category] {
        return categories
    }
    
    func getProduct(forCategoryTitle title: String) -> [Product] {
        switch title {
        case "SHIRTS":
            return getShirts()
        case "HOODIES":
            return getHats()
        case "HATS":
            return getHoodies()
        default:
            return getDigitalGoods()
        }
    }
    
    func getHats() -> [Product] {
        return hats
    }
    
    func getHoodies() -> [Product] {
        return hoodies
    }
    
    func getShirts() -> [Product] {
        return shirts
    }
    
    func getDigitalGoods() -> [Product] {
        return digitalGoods
    }
}
