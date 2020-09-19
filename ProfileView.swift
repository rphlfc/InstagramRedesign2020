//
//  ProfileView.swift
//  InstagramRedesign2020
//
//  Created by Raphael Cerqueira on 18/09/20.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack {
                ProfileNavigationView()
                    .padding(.horizontal)
                
                ProfileInfoView()
                
                ProfileMenuView()
                    .padding([.horizontal, .top])
                
                CategoriesView()
                
                Divider()
                    .padding(.vertical, 8)
                
                VisualizationMenuView()
            }
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
