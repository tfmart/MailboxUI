//
//  EmptyState.swift
//  MailboxUI
//
//  Created by Tomas Martins on 11/03/22.
//

import SwiftUI

struct EmptyState: View {
    var textColor: Color {
        return Color(red: 0.475, green: 0.478, blue: 0.478)
    }
    
    var body: some View {
        ZStack {
            Color(red: 0.89, green: 0.89, blue: 0.89)
            VStack {
                Text("\(Image(systemName: "tray.fill"))")
                    .font(.system(size: 144,
                                  weight: .bold,
                                  design: .default))
                    .foregroundColor(.black.opacity(0.12))
                    .shadow(color: .white.opacity(0.32),
                            radius: 0,
                            x: 0, y: 1)
                Text("You're all done.")
                    .foregroundColor(textColor)
                    .shadow(color: .white.opacity(0.48),
                            radius: 0,
                            x: 0, y: 1)
            }
        }
    }
}

struct EmptyState_Previews: PreviewProvider {
    static var previews: some View {
        EmptyState()
    }
}
