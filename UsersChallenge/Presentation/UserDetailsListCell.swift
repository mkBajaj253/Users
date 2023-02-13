//
//  UserDetailsListCell.swift
//  UsersChallenge
//
//  Created by Adam Khan on 09/02/2023.
//

import SwiftUI

/// Displays the characters details in VStack for the main List
internal struct UserDetailsListCell: View {
    
    /// The given character
    let user: String
    
    var body: some View {
        HStack(spacing: 10) {
            Text(user)
                .font(.headline)
                .shadow(radius: 1)
                .background{
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundColor(.gray)
                        .opacity(0.1)
                        .blur(radius: 10)
                        .lineLimit(nil)
                        .multilineTextAlignment(TextAlignment.leading)
                    Spacer()
                }
        }
    }
}

struct UserDetailsListCell_Previews: PreviewProvider {
    static var previews: some View {
        UserDetailsListCell(user: "Big Guy")
    }
}
