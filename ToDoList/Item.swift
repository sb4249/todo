//
//  Item.swift
//  ToDoList
//
//  Created by Sara Beinish on 7/9/23.
//

import Foundation
import SwiftUI


class Item : ObservableObject {
    @Published var item: String
    @Published var isDone: Bool
    @Published var date: Date
    @Published var image: String
    @Published var color: Color

    let now = Date.now
    
    
    init(newitem: String) {
        self.item = newitem
        self.isDone = false
        self.date = Date.now
        self.image = "circlebadge"
        self.color = .black
    }
    
    func press() {
        if (isDone) {
            self.isDone = false
            self.image = "circlebadge"
            self.color = .black
        } else {
            isDone = true
            image = "circlebadge.fill"
            color = .gray
        }
    }
    
    func setItem(x: String) {
        self.item = x
    }
}
