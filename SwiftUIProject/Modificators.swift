//
//  Modificators.swift
//  SwiftUIProject
//
//  Created by Mihail on 03.08.2021.
//

import SwiftUI

struct Title: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .foregroundColor(.white)
            .padding()
            .background(Color.blue)
    }
}

struct MainText: ViewModifier {
    func body(content: Content) -> some View {
        content
            .foregroundColor(.black)
    }
}
