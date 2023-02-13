//
//  ViewModifiers.swift
//  UsersChallenge
//
//  Created by Adam Khan on 09/02/2023.
//

import SwiftUI

fileprivate struct imageListViewModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .scaledToFit()
            .cornerRadius(20)
            .shadow(radius: 10)
            .padding()
    }
}

extension View {
    func imageListModifier() -> some View {
        self.modifier(imageListViewModifier())
    }
}
