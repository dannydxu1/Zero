//
//  ListView.swift
//  ZERO
//
//  Created by 90308209 on 4/1/22.
//

import SwiftUI

struct ListView: View {

    @EnvironmentObject var listViewModel: ListViewModel //LISTVIEWMODEL WITH CAPITAL L IS THE ITEM TYPE, NAME IS WITH LOWERCASE L
        //name: item type
    var body: some View {
        List {
            ForEach(listViewModel.items) { item in //this is dumb because the object is named item and the arbitrary name is item
                ListRowView(item: item)
                    .onTapGesture {
                        withAnimation(.linear){
                            listViewModel.updateItem(item: item)
                        }
                    }
            }
            .onDelete(perform: listViewModel.deleteItem)
            .onMove(perform: listViewModel.moveItem)

        }
        .listStyle(PlainListStyle())
        .navigationTitle("To Do List")
        .navigationBarItems(
            leading: EditButton(),
            trailing: NavigationLink("Add", destination: AddView()))
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            ListView()
        }
        .environmentObject(ListViewModel())

    }
}
