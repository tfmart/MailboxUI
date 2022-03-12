//
//  SearchBar.swift
//  MailboxUI
//
//  Created by Tomas Martins on 11/03/22.
//

import SwiftUI

struct SearchBar: View {
    @State var searchTerm: String = ""
    
    var placeholderColor: Color {
        return Color(red: 0.702, green: 0.702, blue: 0.702)
    }
    
    var fauxBackgroundInnerShadow: some View {
        Color.white.opacity(0.32)
            .frame(height: 2)
    }
    
    var background: some View {
        ZStack(alignment: .top) {
            LinearGradient(colors: [
                Color(red: 0.867, green: 0.875, blue: 0.875),
                Color(red: 0.753, green: 0.761, blue: 0.765)
            ], startPoint: .top, endPoint: .bottom)
                .shadow(color: .black.opacity(0.32),
                         radius: 0,
                         x: 0, y: 1)
            fauxBackgroundInnerShadow
        }
    }
    
    var body: some View {
        ZStack(alignment: .leading) {
            TextField("", text: $searchTerm)
                .textFieldStyle(.oldSchool)
                .padding(6)
                .background(background)
                .frame(height: 48)
            Group {
                Text("\(Image(systemName: "magnifyingglass"))")
                    .font(.system(size: 14,
                                  weight: .bold,
                                  design: .default)) +
                Text(" Search")
            }
            .foregroundColor(placeholderColor)
            .padding(.leading, 18)
        }
    }
}

struct SearchBar_Previews: PreviewProvider {
    static var previews: some View {
        SearchBar()
    }
}
