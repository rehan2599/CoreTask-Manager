//
//  SideBarView.swift
//  Reminders
//
//  Created by Mohammad Azam on 12/2/21.
//

import SwiftUI

struct SideBarView: View {
    
    @Environment(\.managedObjectContext) var context: NSManagedObjectContext
    @State private var isPresented: Bool = false
    
    var body: some View {
        VStack(alignment: .leading) {
            
            MyListsView(vm: MyListsViewModel(context: context))
            
            Spacer()
            
            Button {
                // action
                isPresented = true
            } label: {
                HStack {
                    Image(systemName: Constants.Icons.plusCircle)
                    Text("Add List")
                }
            }.buttonStyle(.plain)
                .padding()

        }.sheet(isPresented: $isPresented) {
            // dismiss
        } content: {
            AddNewListView(vm: AddNewListViewModel(context: context))
        }

    }
}

struct SideBarView_Previews: PreviewProvider {
    static var previews: some View {
        SideBarView()
    }
}