//
//  SearchBar.swift
//  MailboxUI
//
//  Created by Tomas Martins on 11/03/22.
//

import SwiftUI

struct SearchBar: View {
    @State var searchTerm: String = ""
    
    var background: some View {
        LinearGradient(colors: [
            Color(red: 0.867, green: 0.875, blue: 0.875),
            Color(red: 0.753, green: 0.761, blue: 0.765)
        ], startPoint: .top, endPoint: .bottom)
            .shadow(color: .black.opacity(0.32),
                    radius: 0,
                    x: 0,
                    y: 1)
    }
    
    var body: some View {
        TextField("\(Image(systemName: "magnifyingglass")) Search",
                  text: $searchTerm)
            .textFieldStyle(.oldSchool)
            .padding(6)
            .background(background)
    }
}

struct SearchBar_Previews: PreviewProvider {
    static var previews: some View {
        SearchBar()
    }
}
