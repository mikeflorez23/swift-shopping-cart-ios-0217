//
//  Cart.swift
//  swift-shopping-cart
//
//  Created by James Campagno on 9/26/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

class Cart {
    
    var items: [Item] = []
    
    func totalPriceInCents() -> Int {
        var total = 0
        
        for price in items {
            total += price.priceInCents
        }
        return total
    }
    
    func add(item: Item) {
        items.append(item)
    }
    
    func remove(item: Item) {
        if let removeAtIndex = items.index(of: item) {
            items.remove(at: removeAtIndex)
        }
    }
    
    func items(withName name: String) -> [Item] {
        var matchingItems: [Item] = []
        for item in items {
            if item.name == name {
                matchingItems.append(item)
            }
        }
        return matchingItems
    }
    
    func items(withMinPrice price: Int) -> [Item] {
        var itemsGreater: [Item] = []
        for item in items {
            if item.priceInCents >= price {
                itemsGreater.append(item)
            }
        }
        return itemsGreater
    }
    
    func items(withMaxPrice price: Int) -> [Item] {
        var itemsLess: [Item] = []
        for item in items {
            if item.priceInCents <= price {
                itemsLess.append(item)
            }
        }
        return itemsLess
    }
    
    
}
