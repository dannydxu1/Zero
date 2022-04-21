//
//  ItemModel.swift
//  ZERO
//
//  Created by 90308209 on 4/4/22.
// only update items within the item model

import Foundation

struct ItemModel: Identifiable { //identifiable gives it an id
    let id: String //uuid.uuidstring is a premade method that geneerates an ID
    let title: String
    let isCompleted: Bool

    init(id: String = UUID().uuidString, title: String, isCompleted: Bool){ //initializer
        self.id = id
        self.title = title
        self.isCompleted = isCompleted
    }

    func updateCompletion() -> ItemModel { //returns an item model that with the inverse completion, 5head
        return ItemModel(id: id, title: title, isCompleted: !isCompleted)
    }
}

//baiscally a class for items so we can give it properties
