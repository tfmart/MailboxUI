//
//  View+Border.swift
//  MailboxUI
//
//  Created by Tomas Martins on 12/03/22.
//

import SwiftUI

extension View {
    func border(radius cornerRadius: CGFloat, color: Color = .black, width: CGFloat = 1) -> some View {
        self
            .overlay(RoundedRectangle(cornerRadius: cornerRadius)
                        .stroke(color, lineWidth: width))
    }
}
