//
//  Item.swift
//  Todoey
//
//  Created by Rainier Feiler on 6/14/18.
//  Copyright © 2018 Rainier Feiler. All rights reserved.
//

import Foundation

class Item {
    var title: String = ""
    var isDone: Bool = false
    
    init() {
        
    }
    
    convenience init(withTitle title: String) {
        self.init()
        self.title = title
    }
}
