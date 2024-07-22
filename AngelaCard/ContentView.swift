//
//  ContentView.swift
//  AngelaCard
//
//  Created by Alexander Bokhulenkov on 22.07.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(.green)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image(systemName: "globe")
                    .imageScale(.large)
                .foregroundStyle(.tint)
                Text("Hello, world!")
            }
                    .padding()
        }
    }
}

#Preview {
    ContentView()
}
