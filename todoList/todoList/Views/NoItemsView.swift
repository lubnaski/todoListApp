//
//  NoItemsView.swift
//  todoList
//
//  Created by Lubna on 07/10/22.
//

import SwiftUI

struct NoItemsView: View {
    var body: some View {
        ScrollView{
            VStack (spacing: 10) {
                Text("There are no items..")
                    .font(.title)
                    .fontWeight(.semibold)
                Text("Are you a productive person? Let's add some bunch of items to your todo list")
            }
            .multilineTextAlignment(.center)
            .padding(40)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

struct NoItemsView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            NoItemsView()
        }
        .navigationTitle(Text("This is title"))
        
    }
}
