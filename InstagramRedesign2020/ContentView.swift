//
//  ContentView.swift
//  InstagramRedesign2020
//
//  Created by Raphael Cerqueira on 16/09/20.
//

import SwiftUI

struct ContentView: View {
    @State var selectedViewIndex = 0
    
    var body: some View {
        ZStack {
            Color("background").edgesIgnoringSafeArea(.all)
            
            if selectedViewIndex == 0 {
                HomeView()
            } else if selectedViewIndex == 3 {
                ActivityView()
            } else if selectedViewIndex == 4 {
                ProfileView()
            }
            
            CustomTabView(selectedIndex: self.$selectedViewIndex)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
