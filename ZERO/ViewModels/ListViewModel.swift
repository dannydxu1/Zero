//
//  ListViewModel.swift
//  ZERO
//
//  Created by 90308209 on 4/4/22.
//

import Foundation
//all the data references are here

class ListViewModel: ObservableObject {

    @Published var items: [ItemModel] = [] //empty array of item models

    init (){
        getItems()
    }

    func getItems(){
        let newItems = [
            ItemModel(title: "one", isCompleted:  false),
            ItemModel(title: "two", isCompleted: false),
            ItemModel(title: "three", isCompleted: true),
        ]
        items.append(contentsOf: newItems)
    }

    func deleteItem(indexSet: IndexSet){
        items.remove(atOffsets: indexSet)
    }

    func moveItem(from: IndexSet, to: Int){
        items.move(fromOffsets: from, toOffset: to)
    }

    func addItem(title: String){
        let newItem = ItemModel(title: title, isCompleted: false)
        items.append(newItem)
    }

    func updateItem(item: ItemModel) {

        if let index = items.firstIndex(where: { $0.id == item.id }) {
            items[index] = item.updateCompletion()
        }
    }
}
