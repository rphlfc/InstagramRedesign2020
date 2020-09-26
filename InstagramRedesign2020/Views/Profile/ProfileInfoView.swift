//
//  ProfileInfoView.swift
//  InstagramRedesign2020
//
//  Created by Raphael Cerqueira on 18/09/20.
//

import SwiftUI

struct ProfileInfoView: View {
    var body: some View {
        VStack {
            
            HStack {
                VStack(alignment: .trailing) {
                    Text("23,6K")
                        .font(.system(size: 19, weight: .bold))
                    
                    Text("Followers")
                        .font(.system(size: 14, weight: .bold))
                        .foregroundColor(.gray)
                }
                
                ZStack(alignment: .bottom) {
                    StoryItemView(item: StoryItem(image: "manuel", name: ""))
                    
                    Button(action: {}, label: {
                        Image(systemName: "plus")
                            .font(.system(size: 14, weight: .bold))
                            .frame(width: 30, height: 30)
                            .foregroundColor(.white)
                            .background(RoundedRectangle(cornerRadius: 12).fill(LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.9868244529, green: 0.5855258107, blue: 0.09304409474, alpha: 1)), Color(#colorLiteral(red: 0.7633709311, green: 0.1634711623, blue: 0.7447224855, alpha: 1))]), startPoint: .bottom, endPoint: .top)))
                            .padding(.bottom, 8)
                    })
                }
                .padding(.horizontal)
                
                VStack(alignment: .leading) {
                    Text("23,6K")
                        .font(.system(size: 19, weight: .bold))
                    
                    Text("Followers")
                        .font(.system(size: 14, weight: .bold))
                        .foregroundColor(.gray)
                }
            }
            
            HStack {
                Text("Manuel Rovira")
                    .font(.system(size: 19, weight: .bold))
                
                Divider()
                    .frame(height: 30)
                    .padding(.horizontal)
                
                Text("Photographer")
                    .font(.system(size: 19, weight: .bold))
            }
            
            Text("Like to travel and shoot cinematic and b/w photos.")
                .font(.system(size: 14, weight: .bold))
                .foregroundColor(.gray)
                .padding(.top, 8)
            
            HStack {
                Text("Tools - Capture One for Raw.")
                    .font(.system(size: 14, weight: .bold))
                    .foregroundColor(.gray)
                
                Button(action: {}, label: {
                    Text("@photolove21")
                        .font(.system(size: 14, weight: .bold))
                        .foregroundColor(.blue)
                })
            }
        }
    }
}

struct ProfileInfoView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileInfoView()
    }
}
