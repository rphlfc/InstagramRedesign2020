//
//  StoriesView.swift
//  InstagramRedesign2020
//
//  Created by Raphael Cerqueira on 16/09/20.
//

import SwiftUI

struct CategoriesView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 16) {
                VStack {
                    Button(action: {}, label: {
                        Image(systemName: "plus")
                            .font(.system(size: 18, weight: .bold))
                            .foregroundColor(Color("plus"))
                            .frame(width: 68, height: 68)
                            .background(
                                RoundedRectangle(cornerRadius: 26)
                                    .strokeBorder(Color(#colorLiteral(red: 0.8612819314, green: 0.8947748542, blue: 0.9203428626, alpha: 1)), lineWidth: 2)
                                    .foregroundColor(Color(#colorLiteral(red: 0.9389725327, green: 0.9531454444, blue: 0.9702789187, alpha: 1)))
                            )
                    })
                    
                    Text("New")
                        .font(.system(size: 16, weight: .bold))
                        .padding(.top, 6)
                }
                
                CategoryItemView(item: StoryItem(image: "profile1", name: "Travels"))
                CategoryItemView(item: StoryItem(image: "profile2", name: "Cool"))
                CategoryItemView(item: StoryItem(image: "profile3", name: "Scot"))
                CategoryItemView(item: StoryItem(image: "profile4", name: "Holidays"))
                CategoryItemView(item: StoryItem(image: "profile5", name: "Travels"))
                CategoryItemView(item: StoryItem(image: "profile6", name: "Cool"))
            }
            .padding(.horizontal)
        }
        .padding(.top)
    }
}

struct CategoryItemView: View {
    var item: StoryItem
    
    var body: some View {
        VStack {
            Button(action: {}, label: {
                Image(self.item.image)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 68, height: 68)
                    .font(.system(size: 18, weight: .bold))
                    .foregroundColor(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)))
                    .clipShape(RoundedRectangle(cornerRadius: 26))
            })
            
            Text(self.item.name)
                .font(.system(size: 16, weight: .bold))
        }
    }
}

struct CategoriesView_Previews: PreviewProvider {
    static var previews: some View {
        CategoriesView()
    }
}
