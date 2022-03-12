//
//  Shapes.swift
//  MailboxUI
//
//  Created by Tomas Martins on 12/03/22.
//

import SwiftUI

struct HalfPill: Shape {
    var isLeading: Bool
    let cornerRadius = 32

    var corners: UIRectCorner {
        if isLeading {
            return [.topRight, .bottomRight]
        } else {
            return [.topLeft, .bottomLeft]
        }
    }

    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect,
                                byRoundingCorners: corners,
                                cornerRadii:
                                    CGSize(width: cornerRadius, height: cornerRadius))
        return Path(path.cgPath)
    }
}

struct NavigationShape: Shape {
    let cornerRadius = 8
    
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect,
                                byRoundingCorners: [.topLeft, .topRight],
                                cornerRadii: .init(width: cornerRadius, height: cornerRadius))
        return Path(path.cgPath)
    }
}

struct Shapes_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            HalfPill(isLeading: true)
                .foregroundColor(.red)
            HalfPill(isLeading: false)
                .foregroundColor(.blue)
            NavigationShape()
                .foregroundColor(.green)
        }
    }
}
