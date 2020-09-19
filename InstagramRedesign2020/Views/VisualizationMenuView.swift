//
//  VisualizationMenuView.swift
//  InstagramRedesign2020
//
//  Created by Raphael Cerqueira on 18/09/20.
//

import SwiftUI

struct VisualizationMenuView: View {
    var body: some View {
        VStack {
            VisualizationMenuSelectorView()
            
            GeometryReader { geometry in
                VStack {
                    LazyVGrid(columns: [
                        GridItem(.fixed(((geometry.size.width / 3) * 2) - 16), spacing: 16),
                        GridItem(.fixed(geometry.size.width / 3), spacing: 0)
                    ], spacing: 0, content: {
                        Image("profile1")
                            .resizable()
                            .scaledToFill()
                            .frame(width: (geometry.size.width / 3) * 2, height: 288)
                            .clipShape(Rectangle())
                        
                        VStack(spacing: 8) {
                            Image("profile2")
                                .resizable()
                                .scaledToFill()
                                .frame(width: geometry.size.width / 3, height: 140)
                                .clipShape(Rectangle())
                            
                            Image("profile3")
                                .resizable()
                                .scaledToFill()
                                .frame(width: geometry.size.width / 3, height: 140)
                                .clipShape(Rectangle())
                        }
                    })
                    
                    LazyVGrid(columns: [
                        GridItem(.fixed((geometry.size.width / 3) - 32), spacing: 32),
                        GridItem(.fixed((geometry.size.width / 3) - 16), spacing: 16),
                        GridItem(.fixed(geometry.size.width / 3))
                    ], spacing: 8, content: {
                        ForEach(1 ..< 7) { item in
                            Image("profile\(item)")
                                .resizable()
                                .scaledToFill()
                                .frame(width: geometry.size.width / 3, height: 136)
                                .clipShape(Rectangle())
                        }
                    })
                }
                .cornerRadius(20)
            }
            .padding(.horizontal, 8)
            .padding(.top)
        }
    }
}

struct VisualizationMenuSelectorView: View {
    @State var selectedIndex = 0
    
    let items = ["square.grid.2x2", "play.rectangle", "tv", "person.crop.square", "link.circle", "bookmark"]
    
    var body: some View {
        HStack {
            Spacer()
            
            ForEach(0 ..< self.items.count) { i in
                Button(action: {
                    self.selectedIndex = i
                }, label: {
                    Image(systemName: self.selectedIndex == i ? "\(self.items[i]).fill" : self.items[i])
                        .font(.system(size: 24))
                        .foregroundColor(self.selectedIndex == i ? Color.black : Color(#colorLiteral(red: 0.7466882467, green: 0.7851133943, blue: 0.8106113076, alpha: 1)))
                })
                
                Spacer()
            }
        }
    }
}

struct VisualizationMenuView_Previews: PreviewProvider {
    static var previews: some View {
        VisualizationMenuView()
    }
}
