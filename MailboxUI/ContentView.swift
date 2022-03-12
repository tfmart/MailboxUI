//
//  ContentView.swift
//  MailboxUI
//
//  Created by Tomas Martins on 11/03/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 3) {
            NavigationTitleView()
            ZStack(alignment: .top) {
                EmptyState()
                    .edgesIgnoringSafeArea(.bottom)
                VStack(spacing: 3) {
                    SearchBar()
                        .disabled(true)
                }
            }
        }
        .preferredColorScheme(.dark)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
