//
//  InfoView.swift
//  AngelaCard
//
//  Created by Alexander Bokhulenkov on 22.07.2024.
//

import SwiftUI

struct InfoView: View {
    
    let text: String
    let imageName: String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(Color.white)
            .frame(height: 50)
            .overlay(HStack {
                Image(systemName: imageName)
                    .foregroundStyle(Color.green)
                Text(text).foregroundStyle(Color.brown)
            })
    }
}

#Preview {
    InfoView(text: "Hello", imageName: "phone.fill")
        .previewLayout(.sizeThatFits)
}
