//
//  ContentView.swift
//  MailboxUI
//
//  Created by Tomas Martins on 11/03/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack(alignment: .top) {
            EmptyState()
                .padding(.top)
                .edgesIgnoringSafeArea(.bottom)
            SearchBar()
                .padding(.top, 46)
                .disabled(true)
            NavigationTitleView()
        }
        .preferredColorScheme(.dark)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
