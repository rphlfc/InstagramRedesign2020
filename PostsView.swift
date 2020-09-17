//
//  PostsView.swift
//  InstagramRedesign2020
//
//  Created by Raphael Cerqueira on 16/09/20.
//

import SwiftUI

struct PostsView: View {
    var body: some View {
        VStack(spacing: 0) {
            PostView(profile: "profile5", name: "Jessy_29", postImage: "profile", offset: -120)
            
            PostView(profile: "theweeknd", name: "theweeknd", postImage: "theweeknd2", offset: 0)
                .offset(y: -120)
        }
    }
}

struct PostsView_Previews: PreviewProvider {
    static var previews: some View {
        PostsView()
    }
}
