//
//  ListUIView.swift
//  todoList
//
//  Created by Lubna on 15/09/22.
//

import SwiftUI

struct ListUIView: View {
    @EnvironmentObject var listViewModel: ListViewModel
    
    var body: some View {
        ZStack {
            if listViewModel.items.isEmpty {
                Text("No items")
            } else {
                List{
                    ForEach(listViewModel.items) { item in
                        ListRowView(item: item)
                            .onTapGesture {
                                withAnimation (.linear) {
                                    listViewModel.updateItem(item:  item)
                                }
                            }
                    }
                    .onDelete(perform: listViewModel.deleteItem)
                    .onMove(perform: listViewModel.moveItem)
                }
                .listStyle(PlainListStyle())
            }
        }
        .navigationBarTitle("This is title")
        .navigationBarItems(leading: EditButton(), trailing: NavigationLink("add", destination: AddView()))
    }
}

struct ListUIView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            ListUIView()
        }
        .environmentObject(ListViewModel())
    }
}
