//
//  ImageView.swift
//  UsersAssignment
//
//  Created by apple on 08/02/2023.
//

import SwiftUI

struct ImageView: View {
    
    @State var userAvatar:String
    @State var imageWidth: Double
    @State var cellHeight:Double
    
    var body: some View {
        
        CacheAsyncImage(
            url: URL(string: userAvatar)!
        ) { phase in
            switch phase {
            case .success(let image):
                HStack {
                    image
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: imageWidth)
                        .padding(.trailing, 3)
                }
            case .failure(let error):
                ErrorView(error: error)
            case .empty:
                HStack {
                    ProgressView()
                        .progressViewStyle(CircularProgressViewStyle(tint: .red))
                    Spacer()
                }
            @unknown default:
                Image(systemName: "questionmark")
            }
        }
        .frame(maxWidth: .none)
        .frame(height: cellHeight)
        .listRowSeparator(.hidden)
    }
}

struct ImageView_Previews: PreviewProvider {
    static var previews: some View {
        ImageView(userAvatar: "", imageWidth: 110.0, cellHeight: 120.0)
    }
}
