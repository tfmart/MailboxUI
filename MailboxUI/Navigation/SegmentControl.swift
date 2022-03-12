//
//  SegmentControl.swift
//  MailboxUI
//
//  Created by Tomas Martins on 12/03/22.
//

import SwiftUI

struct SegmentControl: View {
    @State var selectedFilter: FilterOption = .inbox
    
    var selectedBackground: some View {
        LinearGradient(colors: [
            Color(red: 0.424, green: 0.427, blue: 0.427),
            Color(red: 0.702, green: 0.71, blue: 0.71)
          ], startPoint: .top, endPoint: .bottom)
    }
    
    func image(for option: FilterOption) -> some View {
        Button {
            selectedFilter = option
        } label: {
            ZStack {
                if selectedFilter == option {
                    selectedBackground
                }
                
                    Text("\(Image(systemName: option.symbol))")
                    .font(.system(size: 18,
                                  weight: .bold,
                                  design: .default))
                    .foregroundColor( selectedFilter == option ?
                                        .white :
                                        Color(red: 0.475, green: 0.478, blue: 0.478))
                    .padding(.horizontal, 14)
                    .padding(.vertical, 6)
                    .shadow(color: selectedFilter == option ?
                                .black.opacity(0.32) :
                                    .white.opacity(0.48),
                            radius: selectedFilter == option ? 3 : 0,
                            x: 0, y: selectedFilter == option ? 0 : 1)
            }
        }.frame(width: 54)
    }
    
    var body: some View {
        HStack(spacing: 0) {
            image(for: .scheduled)
                .clipShape(HalfPill(isLeading: false))
            image(for: .inbox)
            image(for: .completed)
                .clipShape(HalfPill(isLeading: true))
        }
        .border(radius: 32,
                color: .black.opacity(0.24),
                width: 1)
    }
}

struct SegmentControl_Previews: PreviewProvider {
    static var background: some View {
        LinearGradient(colors: [
            Color(red: 0.988, green: 0.988, blue: 0.988),
            Color(red: 0.835, green: 0.835, blue: 0.835)
        ], startPoint: .top, endPoint: .bottom)
    }
    
    static var previews: some View {
        SegmentControl()
            .frame(height: 32)
            .padding()
            .background(background)
    }
}
