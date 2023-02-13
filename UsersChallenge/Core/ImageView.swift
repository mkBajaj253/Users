//
//  ImageView.swift
//  UsersChallenge
//
//  Created by Adam Khan on 09/02/2023.
//

import SwiftUI

/// Displays an image, placeholder (or Error Image) for the List cell
/// Resizabillity is performed at a higher level
/// VM not needed due to simplicity of the View
internal struct ImageView: View {
    /// View model
    @StateObject var viewModel: ImageViewViewModel
    /// Initiallise character using correct StateObject mthod
    init(_ user: user) {
        _viewModel = StateObject(wrappedValue:ImageViewViewModel(user.avatar, id: "\(user.id)"))
    }
    
    var body: some View {
        ZStack{
            if viewModel.error {
                VStack{
                    Image(systemName: "exclamationmark.triangle.fill")
                        .font(.title)
                        .shadow(radius: 10)
                    Text("No image available")
                        .font(.subheadline)
                        .bold()
                }
            }
            else {
                if let image = viewModel.image {
                    Image(uiImage: image)
                        .resizable()
                        .imageListModifier()
                }
                else {
                    ProgressView()
                }
            }
        }.onAppear {
            viewModel.getImage()
        }
    }
}

struct ImageDownloading_Previews: PreviewProvider {
    static var previews: some View {
        ImageView(user(id: 654, email: "BigE-Mail", firstName: "Small Guy", lastName: "Big Guy", avatar: "https://reqres.in/img/faces/2-image.jpg"))
    }
}


