//
//  Category.swift
//  Cart
//
//  Created by offline on 28/12/2017.
//  Copyright © 2017 JoP. All rights reserved.
//

import Foundation

struct Category {
    private(set) public var title: String
    private(set) public var imageName: String
    
    init(title: String, imageName: String) {
        self.title = title
        self.imageName = imageName
    }
}
