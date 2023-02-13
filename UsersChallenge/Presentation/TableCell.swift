//
//  TableCell.swift
//  UsersChallenge
//
//  Created by Adam Khan on 09/02/2023.
//

import SwiftUI

/// Disney character list cell
internal struct TableCell: View {
    
    /// Disney character
    let user: user
    
    var body: some View {
        HStack{
            ImageView(user)
                .frame(width: 100,height: 100)
            
            UserDetailsListCell(user: user.firstName)
                .frame(maxWidth: .infinity)
        }
    }
}

struct TableCell_Previews: PreviewProvider {
    static var previews: some View {
        TableCell(user: user(id: 654, email: "BigE-Mail", firstName: "Small Guy", lastName: "Big Guy", avatar: "https://reqres.in/img/faces/2-image.jpg"))
    }
}
