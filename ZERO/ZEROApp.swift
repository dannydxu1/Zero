//
//  ZEROApp.swift
//  ZERO
//
//  Created by 90308209 on 4/1/22.
//

import SwiftUI

/*

MVVM Architecture
Model - Data point
View - UI components
ViewModel - manages Models for View, logic for creating, updating, and reading data



 */

@main
struct ZEROApp: App {

    @State var listViewModel: ListViewModel =  ListViewModel()

    var body: some Scene {
        WindowGroup {
            NavigationView{
                ListView()
            }
            .environmentObject(listViewModel) //allows all the views to have access to ListViewModel
        }
    }
}
