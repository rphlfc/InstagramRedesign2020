//
//  CommentView.swift
//  InstagramRedesign2020
//
//  Created by Raphael Cerqueira on 26/09/20.
//

import SwiftUI

struct CommentView: View {
    var image: String
    var username: String
    var comment: String
    var post: String
    
    var body: some View {
        HStack(alignment: .top) {
            Button(action: {}, label: {
                Image(image)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 50, height: 50)
                    .font(.system(size: 18, weight: .bold))
                    .foregroundColor(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)))
                    .clipShape(RoundedRectangle(cornerRadius: 26))
                    .padding(6)
                    .background(
                        RoundedRectangle(cornerRadius: 25)
                            .strokeBorder(LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.9868244529, green: 0.5855258107, blue: 0.09304409474, alpha: 1)), Color(#colorLiteral(red: 0.7633709311, green: 0.1634711623, blue: 0.7447224855, alpha: 1))]), startPoint: .bottom, endPoint: .top), lineWidth: 3)
                            .foregroundColor(Color(#colorLiteral(red: 0.9389725327, green: 0.9531454444, blue: 0.9702789187, alpha: 1)))
                    )
            })
            
            VStack(alignment: .leading) {
                Text("erickmiller")
                    .font(.system(size: 17, weight: .bold))
                
                HStack(alignment: .bottom) {
                    Text(comment)
                        .font(.system(size: 14, weight: .bold))
                        .foregroundColor(.gray)
                }
                
                HStack {
                    Button(action: {}, label: {
                        Image(systemName: "heart")
                            .font(.system(size: 19, weight: .bold))
                            .foregroundColor(.gray)
                    })
                    
                    Button(action: {}, label: {
                        Image(systemName: "ellipsis.bubble")
                            .font(.system(size: 19, weight: .bold))
                            .foregroundColor(.gray)
                            .padding(.leading, 8)
                    })
                }
                .padding(.top, 8)
            }
            
            Spacer()
            
            Image("profile")
                .resizable()
                .scaledToFill()
                .frame(width: 90, height: 90)
                .clipShape(RoundedRectangle(cornerRadius: 20))
        }
        .padding(8)
        .background(Color.white)
        .clipShape(RoundedRectangle(cornerRadius: 30))
        .padding(.top, 8)
    }
}

struct CommentView_Previews: PreviewProvider {
    static var previews: some View {
        CommentView(image: "profile1", username: "usernae", comment: "comment", post:"profile")
    }
}
