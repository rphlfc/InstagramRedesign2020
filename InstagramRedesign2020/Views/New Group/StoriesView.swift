//
//  StoriesView.swift
//  InstagramRedesign2020
//
//  Created by Raphael Cerqueira on 16/09/20.
//

import SwiftUI

struct StoriesView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                VStack {
                    Button(action: {}, label: {
                        Image(systemName: "plus")
                            .font(.system(size: 18, weight: .bold))
                            .foregroundColor(Color("plus"))
                            .frame(width: 68, height: 68)
                            .background(
                                RoundedRectangle(cornerRadius: 26)
                                    .strokeBorder(Color(#colorLiteral(red: 0.862745098, green: 0.8941176471, blue: 0.9215686275, alpha: 1)), lineWidth: 2)
                                    .foregroundColor(Color(#colorLiteral(red: 0.9389725327, green: 0.9531454444, blue: 0.9702789187, alpha: 1)))
                            )
                    })
                    
                    Text("My Story")
                        .font(.system(size: 16, weight: .bold))
                        .padding(.top, 6)
                }
                
                ForEach(storyItems) { item in
                    StoryItemView(item: item)
                }
                
            }
            .padding(.horizontal)
        }
        .padding(.top)
    }
}

struct StoriesView_Previews: PreviewProvider {
    static var previews: some View {
        StoriesView()
    }
}
