//
//  ActivityView.swift
//  InstagramRedesign2020
//
//  Created by Raphael Cerqueira on 26/09/20.
//

import SwiftUI

struct ActivityView: View {
    var body: some View {
        ZStack {
            Color("background").edgesIgnoringSafeArea(.all)
            
            VStack {
                Text("Activity")
                    .font(.system(size: 24, weight: .bold))
                
                ActivityMenuView()
                
                ScrollView(.vertical, showsIndicators: false) {
                    VStack(alignment: .leading) {
                        Text("New (64)")
                            .font(.system(size: 20, weight: .bold))
                            .padding(.top)
                        
                        FollowBackView(image: "profile1", username: "laura_32", time: "25s")
                        
                        CommentView(image: "profile4", username: "erickmiller", comment: "Commented: Great content, without a doubt I am your big fan, you get great pictures in incredible places. 1 min", post: "profile")
                        
                        FollowBackView(image: "profile2", username: "lukas333", time: "2 min")
                        
                        FollowBackView(image: "profile3", username: "danieldops", time: "3 min")
                        
                        CommentView(image: "profile4", username: "erickmiller", comment: "Commented: Great content, without a doubt I am your big fan, you get great pictures in incredible places. 1 min", post: "profile")
                        
                        CommentView(image: "profile6", username: "vakkim", comment: "Commented: Great content, without a doubt I am your big fan, you get great pictures in incredible places. 1 min", post: "profile")
                        
                        Spacer(minLength: 70)
                    }
                    .padding(.horizontal)
                }
                
                Spacer()
            }
        }
    }
}

struct ActivityView_Previews: PreviewProvider {
    static var previews: some View {
        ActivityView()
    }
}
