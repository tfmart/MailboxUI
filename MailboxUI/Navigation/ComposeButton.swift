//
//  ComposeButton.swift
//  MailboxUI
//
//  Created by Tomas Martins on 12/03/22.
//

import SwiftUI

struct ComposeButton: View {
    var body: some View {
        Button { } label: {
            Text("\(Image(systemName: "square.and.pencil"))")
                .font(.system(size: 20, weight: .bold, design: .default))
                .shadow(color: .white.opacity(0.48),
                        radius: 0,
                        x: 0, y: 1)
                .padding(.vertical, 4)
                .padding(.horizontal, 6)
                .border(radius: 6,
                        color: .black.opacity(0.16),
                        width: 1)
        }
        .foregroundColor(Color(red: 0.475, green: 0.478, blue: 0.478))
        .frame(width: 38, height: 32)
        .shadow(color: .white.opacity(0.25),
                radius: 0,
                x: 0, y: 1)

    }
}

struct ComposeButton_Previews: PreviewProvider {
    static var previews: some View {
        ComposeButton()
    }
}
