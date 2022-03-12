//
//  InnerShadow.swift
//  MailboxUI
//
//  Created by Tomas Martins on 12/03/22.
//

import SwiftUI

extension View {
    func innerShadow<S: Shape>(using shape: S,
                               angle: Angle = .degrees(0),
                               color: Color = .black,
                               width: CGFloat = 6,
                               blur: CGFloat = 6) -> some View {
        let finalX = CGFloat(cos(angle.radians - .pi / 2))
        let finalY = CGFloat(sin(angle.radians - .pi / 2))

        return self
            .overlay(
                shape
                    .stroke(color, lineWidth: width)
                    .offset(x: finalX * width * 0.6, y: finalY * width * 0.6)
                    .blur(radius: blur)
                    .mask(shape)
            )
    }
}
