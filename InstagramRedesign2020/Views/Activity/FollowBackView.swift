//
//  FollowBackView.swift
//  InstagramRedesign2020
//
//  Created by Raphael Cerqueira on 26/09/20.
//

import SwiftUI

struct FollowBackView: View {
    var image: String
    var username: String
    var time: String
    
    var body: some View {
        HStack {
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
                Text(username)
                    .font(.system(size: 17, weight: .bold))
                
                HStack(alignment: .bottom) {
                    Text("started following you")
                        .font(.system(size: 15, weight: .bold))
                        .foregroundColor(.gray)
                    
                    Text(time)
                        .font(.system(size: 13))
                        .foregroundColor(Color(#colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)))
                }
            }
            
            Spacer()
            
            Button(action: {}, label: {
                Text("Follow back")
                    .padding(8)
                    .font(.system(size: 15, weight: .medium))
                    .frame(width: 115, height: 50)
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .clipShape(Capsule())
            })
        }
        .padding(8)
        .background(Color.white)
        .clipShape(RoundedRectangle(cornerRadius: 30))
        .padding(.top, 8)
    }
}

struct FollowBackView_Previews: PreviewProvider {
    static var previews: some View {
        FollowBackView(image: "profile1", username: "username", time: "1 sec")
    }
}
