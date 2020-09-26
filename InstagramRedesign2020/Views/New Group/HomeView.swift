//
//  HomeView.swift
//  InstagramRedesign2020
//
//  Created by Raphael Cerqueira on 18/09/20.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack {
            CustomNavigationView()
            
            ScrollView(.vertical, showsIndicators: false) {
                StoriesView()
                
                PostsView()
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
