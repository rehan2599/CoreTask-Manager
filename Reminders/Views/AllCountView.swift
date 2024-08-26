//
//  AllCountView.swift
//  Reminders
//
//  Created by Mohammad Azam on 12/15/21.
//

import SwiftUI

struct AllCountView: View {
    
    let count: Int
    
    var body: some View {
        HStack {
            VStack {
                Image(systemName: Constants.Icons.trayCircleFill)
                    .font(.largeTitle)
                Text("All")
            }
            Spacer()
            VStack {
                Text("\(count)")
                    .font(.title)
                EmptyView()
            }
        }
        .padding()
        .background(Color.gray)
        .clipShape(RoundedRectangle(cornerRadius: 20.0, style: .continuous))
    }
}

struct AllCountView_Previews: PreviewProvider {
    static var previews: some View {
        AllCountView(count: 10)
    }
}
