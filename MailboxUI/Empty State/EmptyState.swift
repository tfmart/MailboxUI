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
    
    var shareButton: some View {
        Button(action: shareSheet) {
            Text("\(Image(systemName: "square.and.arrow.up"))")
                .font(.system(size: 20, weight: .bold, design: .default))
                .shadow(color: .white.opacity(0.48),
                        radius: 0,
                        x: 0, y: 1)
                .padding(.trailing, 12)
        }
        .foregroundColor(Color(red: 0.475, green: 0.478, blue: 0.478))
        .frame(width: 38, height: 32)
        .shadow(color: .white.opacity(0.25),
                radius: 0,
                x: 0, y: 1)
    }
    
    var inboxIcon: some View {
        Image("mask")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(height: 172)
            .mask({
                Text("\(Image(systemName: "tray.fill"))")
                    .font(.system(size: 144,
                                  weight: .bold,
                                  design: .default))
            })
            .shadow(color: .white.opacity(0.32),
                    radius: 0,
                    x: 0, y: 1)
    }
    
    var body: some View {
        ZStack {
            Color(red: 0.89, green: 0.89, blue: 0.89)
                .edgesIgnoringSafeArea(.bottom)
            VStack {
                inboxIcon
                Text("You're all done.")
                    .foregroundColor(textColor)
                    .shadow(color: .white.opacity(0.48),
                            radius: 0,
                            x: 0, y: 1)
            }
            VStack {
                Spacer()
                HStack {
                    Spacer()
                    shareButton
                }
            }
        }
    }
    
    func shareSheet() {
        guard let twitterURL = URL(string: "https://twitter.com/tommycadle/") else { return }
        let activityVC = UIActivityViewController(activityItems: [twitterURL], applicationActivities: nil)
        UIApplication.shared.windows.first?.rootViewController?.present(activityVC, animated: true, completion: nil)
    }
}

struct EmptyState_Previews: PreviewProvider {
    static var previews: some View {
        EmptyState()
    }
}
