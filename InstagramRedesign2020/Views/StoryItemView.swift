//
//  StoryItemView.swift
//  InstagramRedesign2020
//
//  Created by Raphael Cerqueira on 16/09/20.
//

import SwiftUI

struct StoryItemView: View {
    var item: StoryItem
    
    var body: some View {
        VStack {
            Button(action: {}, label: {
                Image(self.item.image)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 60, height: 60)
                    .font(.system(size: 18, weight: .bold))
                    .foregroundColor(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)))
                    .clipShape(RoundedRectangle(cornerRadius: 26))
                    .padding(6)
                    .background(
                        RoundedRectangle(cornerRadius: 30)
                            .strokeBorder(LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.9868244529, green: 0.5855258107, blue: 0.09304409474, alpha: 1)), Color(#colorLiteral(red: 0.7633709311, green: 0.1634711623, blue: 0.7447224855, alpha: 1))]), startPoint: .bottom, endPoint: .top), lineWidth: 3)
                            .foregroundColor(Color(#colorLiteral(red: 0.9389725327, green: 0.9531454444, blue: 0.9702789187, alpha: 1)))
                    )
            })
            
            Text(self.item.name)
                .font(.system(size: 16, weight: .bold))
        }
    }
}

struct StoryItem: Identifiable {
    let id = UUID().uuidString
    var image: String
    var name: String
}

let storyItems = [
    StoryItem(image: "profile1", name: "Laura"),
    StoryItem(image: "profile2", name: "Dhers"),
    StoryItem(image: "profile3", name: "Jenny"),
    StoryItem(image: "profile4", name: "Andrey"),
    StoryItem(image: "profile5", name: "Dani")
]

struct StoryItemView_Previews: PreviewProvider {
    static var previews: some View {
        StoryItemView(item: storyItems[0])
    }
}
