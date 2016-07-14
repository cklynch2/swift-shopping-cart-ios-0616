//
//  Cart.swift
//  swift-shopping-cart
//
//  Created by Flatiron School on 7/14/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class Cart {
    var items: [Item]
    
    init() {
        items = [Item]()
    }
    
    func totalPriceInCents() -> Int {
        var totalPrice = 0
        
        for item in items {
            totalPrice += item.priceInCents
        }
        return totalPrice
    }
    
    func addItem(item: Item) {
        items.append(item)
    }
    
    func removeItem(item: Item) {
        if let index = items.indexOf(item) {
            items.removeAtIndex(index)
        }
    }
    
    func itemsWithName(name: String) -> [Item] {
        var itemsWithName = [Item]()
        
        for item in items {
            if item.name == name {
               itemsWithName.append(item)
            }
        }
        return itemsWithName
    }
    
    func itemsWithMinimumPriceInCents(price: Int) -> [Item] {
        var itemsWithMinimumPrice = [Item]()
        
        for item in items where item.priceInCents >= price {
            itemsWithMinimumPrice.append(item)
        }
        return itemsWithMinimumPrice
    }
    
    func itemsWithMaximumPriceInCents(price: Int) -> [Item] {
        var itemsWithMaximumPrice = [Item]()
        
        for item in items where item.priceInCents <= price {
            itemsWithMaximumPrice.append(item)
        }
        return itemsWithMaximumPrice
    }
    
    
}