//
//  PostView.swift
//  InstagramRedesign2020
//
//  Created by Raphael Cerqueira on 16/09/20.
//

import SwiftUI

struct PostView: View {
    var profile: String
    var name: String
    var postImage: String
    var offset: CGFloat
    
    var body: some View {
        ZStack(alignment: .bottom) {
            Image(self.postImage)
                .resizable()
                .clipShape(RoundedRectangle(cornerRadius: 40))
            
            LinearGradient(gradient: Gradient(colors: [Color.black, Color.clear]), startPoint: .bottom, endPoint: .top)
                .frame(height: 300)
                .clipShape(RoundedRectangle(cornerRadius: 40))
            
            VStack {
                HStack {
                    Image(self.profile)
                        .resizable()
                        .frame(width: 55, height: 55)
                        .clipShape(RoundedRectangle(cornerRadius: 22))
                    
                    Text(self.name)
                        .font(.system(size: 17, weight: .bold))
                        .foregroundColor(.white)
                    
                    Spacer()
                    
                    HStack {
                        Capsule()
                            .frame(width: 24, height: 6)
                            .foregroundColor(.white)
                        
                        ForEach(0 ..< 2) { item in
                            Capsule()
                                .frame(width: 9, height: 6)
                                .foregroundColor(Color.white.opacity(0.3))
                        }
                    }
                }
                .padding()
                
                Spacer()
                
                HStack {
                    Button(action: {}, label: {
                        HStack {
                            Image(systemName: "heart.fill")
                                .font(.system(size: 24, weight: .bold))
                            
                            Text("7,8k")
                                .font(.system(size: 18, weight: .bold))
                        }
                        .padding()
                        .background(Capsule().fill(Color.white.opacity(0.3)))
                    })
                    
                    Button(action: {}, label: {
                        HStack {
                            Image(systemName: "ellipsis.bubble.fill")
                                .font(.system(size: 24, weight: .bold))
                            
                            Text("198")
                                .font(.system(size: 18, weight: .bold))
                        }
                        .padding(.leading)
                    })
                    
                    Button(action: {}, label: {
                        Image(systemName: "paperplane.fill")
                            .font(.system(size: 24, weight: .bold))
                            .padding(.leading)
                    })
                    
                    Spacer()
                    
                    Button(action: {}, label: {
                        Image(systemName: "bookmark")
                            .font(.system(size: 24, weight: .bold))
                    })
                }
                .foregroundColor(Color.white)
                .padding()
                .offset(y: offset)
            }
        }
        .frame(height: 600)
    }
}

struct PostView_Previews: PreviewProvider {
    static var previews: some View {
        PostView(profile: "profile5", name: "jessy_29", postImage: "profile", offset: 0)
    }
}
