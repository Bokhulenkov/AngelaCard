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
            Color(red: 0.09, green: 0.63, blue: 0.52, opacity: 1.0)
                .edgesIgnoringSafeArea(.all)
//            VStack сверху вниз
            VStack {
                Image("my")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150, height: 150)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .overlay(
                        Circle().stroke(.white, lineWidth: 5.0)
                    )
                Text("Angela Yu")
                    .font(Font.custom("Pacifico-Regular", size: 40))
                    .bold()
                    .foregroundStyle(.white)
                Text("iOS Developer")
                    .font(.system(size: 25))
                    .foregroundColor(.white)
//                разделитель
                Divider()
               
                Capsule()
//                    .foregroundStyle(Color.white)
                    .fill(Color.white)
                    .frame(height: 50)
                    .overlay(Text("+44 123 456 789").foregroundStyle(Color.brown))
                
                InfoView(text: "mymitrol@yahoo.com", imageName: "envelope.fill")
            }
                    .padding()
        }
    }
}

#Preview {
    ContentView()
}

//embed subviews
//struct InfoView: View {
//    
//    let text: String
//    let imageName: String
//    
//    var body: some View {
//        RoundedRectangle(cornerRadius: 25)
//            .fill(Color.white)
//            .frame(height: 50)
//            .overlay(HStack {
//                Image(systemName: imageName)
//                    .foregroundStyle(Color.green)
//                Text(text).foregroundStyle(Color.brown)
//            })
//    }
//}
