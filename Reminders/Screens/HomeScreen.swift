//
//  HomeScreen.swift
//  Reminders
//
//  Created by Mohammad Azam on 12/2/21.
//

import SwiftUI

struct HomeScreen: View {
    var body: some View {
        NavigationView {
            SideBarView()
                .frame(minWidth: 200)
            Text("MyListItems")
        }
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}
