//
//  OldSchoolTextField.swift
//  MailboxUI
//
//  Created by Tomas Martins on 12/03/22.
//

import SwiftUI

struct OldSchoolTextFieldStyle: TextFieldStyle {
    func _body(configuration: TextField<Self._Label>) -> some View {
            configuration
                .padding(.leading, 12)
                .padding(.vertical, 8)
                .background(Color.white)
                .cornerRadius(18)
                .border(radius: 18,
                        color: .black.opacity(0.24))
                .shadow(color: .white.opacity(0.24),
                        radius: 0,
                        x: 0, y: 1)
        }
}

extension TextFieldStyle where Self == OldSchoolTextFieldStyle  {
    static var oldSchool: OldSchoolTextFieldStyle {
        return .init()
    }
}

struct OldSchoolTextField_Previews: PreviewProvider {
    @State static var text: String = ""
    static var previews: some View {
        TextField("Serach", text: $text)
            .padding()
    }
}
