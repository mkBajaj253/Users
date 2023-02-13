//
//  UserDetailsPageView.swift
//  UsersChallenge
//
//  Created by Adam Khan on 09/02/2023.
//

import SwiftUI


struct UserDetailsPageView: View {
    
    let user: user
    
    var body: some View {
        VStack{
            ImageView(user)
                .frame(height: 400)
            Text(user.firstName + " " + user.lastName)
                .font(.title)
                .multilineTextAlignment(.center)
            Spacer()
            Text(user.email)
                .font(.subheadline)
        }
    }
}

struct UserDetailsPageView_Previews: PreviewProvider {
    static var previews: some View {
        UserDetailsPageView(user: user(id: 654, email: "BigE-Mail", firstName: "Small Guy", lastName: "Big Guy", avatar: "https://reqres.in/img/faces/2-image.jpg"))
    }
}
