//
//  FilterOption.swift
//  MailboxUI
//
//  Created by Tomas Martins on 12/03/22.
//

import Foundation

enum FilterOption: CaseIterable {
    case inbox
    case scheduled
    case completed
    
    var symbol: String {
        switch self {
        case .inbox:
            return "tray.fill"
        case .scheduled:
            return "clock.fill"
        case .completed:
            return "checkmark"
        }
    }
}
