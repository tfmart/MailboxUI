//
//  NavigationTitleView.swift
//  MailboxUI
//
//  Created by Tomas Martins on 12/03/22.
//

import SwiftUI

struct NavigationTitleView: View {
    var body: some View {
        ZStack {
            NavigationShape()
                .fill(LinearGradient(colors: [
                    Color(red: 0.988, green: 0.988, blue: 0.988),
                    Color(red: 0.835, green: 0.835, blue: 0.835)
                ], startPoint: .top, endPoint: .bottom))
                .shadow(color: .black.opacity(0.4),
                        radius: 0.5,
                        x: 0, y: 1)
            HStack {
                MoreButton()
                    .padding(.leading, 6)
                    .padding(.vertical, 6)
                Spacer()
                SegmentControl()
                    .padding(.vertical, 6)
                Spacer()
                ComposeButton()
                    .padding(.trailing, 6)
                    .padding(.vertical, 6)
            }
        }
        .frame(height: 44)
    }
}

struct NavigationTitleView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black
            NavigationTitleView()
        }
        NavigationTitleView()
    }
}
