//
//  HalfPill.swift
//  MailboxUI
//
//  Created by Tomas Martins on 12/03/22.
//

import SwiftUI

struct HalfPill: Shape {
    var isLeading: Bool
    
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
                                    CGSize(width: 32, height: 32))
        return Path(path.cgPath)
    }
}

struct HalfPill_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            HalfPill(isLeading: true)
                .foregroundColor(.red)
            HalfPill(isLeading: false)
                .foregroundColor(.blue)
        }
    }
}
