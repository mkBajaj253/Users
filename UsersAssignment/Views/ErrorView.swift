//
//  ErrorView.swift
//  UsersAssignment
//
//  Created by apple on 08/02/2023.
//

import SwiftUI


struct ErrorView: View {
    let error: Error

    var body: some View {
        print(error)
        return Text("Image Not Found!").font(.system(size: 30)).foregroundColor(.red)
    }
}

struct ErrorView_Previews: PreviewProvider {
    static var previews: some View {
        ErrorView(error: NetworkError.dataNotFound)
    }
}
