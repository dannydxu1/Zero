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
ViewModel - manages Models for View



 */

@main
struct ZEROApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView{
                ListView()
            }
        }
    }
}
