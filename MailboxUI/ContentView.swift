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
                .edgesIgnoringSafeArea(.bottom)
            VStack(spacing: 3) {
                NavigationTitleView()
                SearchBar()
            }
        }.preferredColorScheme(.light)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
