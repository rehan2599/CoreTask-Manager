//
//  MyListItemsView.swift
//  Reminders
//
//  Created by Mohammad Azam on 12/9/21.
//

import SwiftUI

struct MyListItemsView: View {
    
    var items: [MyListItemViewModel]
    
    typealias ItemAdded = ((String, Date?) -> Void)?
    typealias ItemDeleted = ((MyListItemViewModel) -> Void)?
    typealias ItemCompleted = ((MyListItemViewModel) -> Void)?
    
    var onItemAdded: ItemAdded
    var onItemDeleted: ItemDeleted
    var onItemCompleted: ItemCompleted
    
    init(items: [MyListItemViewModel], onItemAdded: ItemAdded = nil,
         onItemDeleted: ItemDeleted = nil, onItemCompleted: ItemCompleted = nil
    ) {
        self.items = items
        self.onItemAdded = onItemAdded
        self.onItemDeleted = onItemDeleted
        self.onItemCompleted = onItemCompleted
    }
    
    var body: some View {
        VStack(alignment: .leading) {
            
            List {
                
                ForEach(items, id: \.listItemId) { item in
                    ListItemCell(item: item, onListItemDeleted: { item in
                        onItemDeleted?(item)
                    }, onListItemCompleted: { item in
                        onItemCompleted?(item)
                    } )
                    Divider()
                }
                
                AddNewListItemView { title, dueDate in
                    onItemAdded?(title, dueDate)
                }
                
            }
            
        }
    }
}

struct MyListItemsView_Previews: PreviewProvider {
    static var previews: some View {
        MyListItemsView(items: [])
    }
}
