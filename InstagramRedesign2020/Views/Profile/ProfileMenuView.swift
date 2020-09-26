//
//  ProfileMenuView.swift
//  InstagramRedesign2020
//
//  Created by Raphael Cerqueira on 18/09/20.
//

import SwiftUI

struct ProfileMenuView: View {
    @State var selectedIndex = 2
    
    let items = ["Edit profile", "Statistics", "Contact"]
    
    var body: some View {
        HStack {
            ForEach(0..<self.items.count) { i in
                ProfileMenuItemView(item: self.items[i], selectedIndex: self.$selectedIndex, index: i)
            }
        }
    }
}

struct ProfileMenuItemView: View {
    var item: String
    @Binding var selectedIndex: Int
    var index: Int
    
    var body: some View {
        Button(action: {
            
        }, label: {
            RoundedRectangle(cornerRadius: 21)
                .overlay(
                    Text(self.item)
                        .font(.system(size: 19, weight: .semibold))
                        .foregroundColor(self.selectedIndex == self.index ? Color.white : Color.black)
                )
                .frame(height: 50)
                .foregroundColor(self.selectedIndex == self.index ? Color.blue : Color(#colorLiteral(red: 0.8949174881, green: 0.9141667485, blue: 0.9268376231, alpha: 1)))
        })
    }
}

struct ProfileMenuView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileMenuView()
    }
}
