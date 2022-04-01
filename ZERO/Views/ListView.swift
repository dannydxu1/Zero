//
//  ListView.swift
//  ZERO
//
//  Created by 90308209 on 4/1/22.
//

import SwiftUI

struct ListView: View {

    @State var items: [String] = [
        "this is the first title!",
        "This is the second",
        "This is the third!"

    ]
    
    var body: some View {
        List {
            ForEach(items, id: \.self) { item in
                ListRowView(title: item)
            }

        }
        .listStyle(PlainListStyle())
        .navigationTitle("To Do List 📝")
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

    }
}
