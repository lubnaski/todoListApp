//
//  todoListApp.swift
//  todoList
//
//  Created by Lubna on 15/09/22.
//

import SwiftUI

@main
struct todoListApp: App {
    @StateObject var listViewModel: ListViewModel = ListViewModel()
    var body: some Scene {
        WindowGroup {
            NavigationView{
                ListUIView()
            }
            .environmentObject(listViewModel)
        }
    }
}
