//
//  ActivityMenuView.swift
//  InstagramRedesign2020
//
//  Created by Raphael Cerqueira on 26/09/20.
//

import SwiftUI

struct ActivityMenuView: View {
    let items = ["All activity", "Likes", "Comments", "Mentions"]
    @State var selectedIndex = 0
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                ForEach(0 ..< items.count) { i in
                    Button(action: {
                        selectedIndex = i
                    }, label: {
                        ZStack(alignment: .top) {
                            VStack {
                                Spacer()
                                
                                Text(items[i])
                                    .font(.system(size: 17, weight: .medium))
                                    .frame(width: 120, height: 50)
                                    .background(selectedIndex == i ? Color.black : Color.white)
                                    .foregroundColor(selectedIndex == i ? .white : .black)
                                    .clipShape(Capsule())
                            }
                            
                            if i == 1 || i == 2 {
                                RoundedRectangle(cornerRadius: 12)
                                    .frame(width: 30, height: 30)
                                    .foregroundColor(Color(#colorLiteral(red: 0.9311559796, green: 0.008160683326, blue: 0.3113113642, alpha: 1)))
                                    .overlay(
                                        Text(i == 1 ? "26" : "13")
                                            .font(.system(size: 15, weight: .medium))
                                            .foregroundColor(.white)
                                    )
                            }
                        }
                        .frame(width: 120, height: 65)
                        
                    })
                }
            }
            .padding(.leading)
        }
    }
}

struct ActivityMenuView_Previews: PreviewProvider {
    static var previews: some View {
        ActivityMenuView()
    }
}
