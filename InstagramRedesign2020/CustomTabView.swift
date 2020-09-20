//
//  CustomTabView.swift
//  InstagramRedesign2020
//
//  Created by Raphael Cerqueira on 16/09/20.
//

import SwiftUI

struct CustomTabView: View {
    @Binding var selectedIndex: Int
    
    var body: some View {
        VStack {
            Spacer()
            
            HStack {
                Button(action: {
                    self.selectedIndex = 0
                }, label: {
                    Image(systemName: "house.fill")
                        .foregroundColor(self.selectedIndex == 0 ? Color("selected") : Color(#colorLiteral(red: 0.7788327932, green: 0.8124979138, blue: 0.8336980939, alpha: 1)))
                })
                
                Spacer()
                
                Button(action: {
                    self.selectedIndex = 1
                }, label: {
                    Image(systemName: "magnifyingglass")
                        .foregroundColor(self.selectedIndex == 1 ? Color("selected") : Color(#colorLiteral(red: 0.7788327932, green: 0.8124979138, blue: 0.8336980939, alpha: 1)))
                })
                
                Spacer()
                
                Button(action: {
                    self.selectedIndex = 2
                }, label: {
                    Image(systemName: "plus.square")
                        .foregroundColor(self.selectedIndex == 2 ? Color("selected") : Color(#colorLiteral(red: 0.7788327932, green: 0.8124979138, blue: 0.8336980939, alpha: 1)))
                })
                
                Spacer()
                
                Button(action: {
                    self.selectedIndex = 3
                }, label: {
                    ZStack(alignment: .trailing) {
                        Image(systemName: "heart")
                            .foregroundColor(self.selectedIndex == 3 ? Color("selected") : Color(#colorLiteral(red: 0.7788327932, green: 0.8124979138, blue: 0.8336980939, alpha: 1)))
                        
                        Circle()
                            .fill(Color(#colorLiteral(red: 0.9987388253, green: 0.009666659869, blue: 0.3012677729, alpha: 1)))
                            .frame(width: 10, height: 10)
                            .shadow(color: Color(#colorLiteral(red: 0.9987388253, green: 0.009666659869, blue: 0.3012677729, alpha: 1)), radius: 10, x: 0.0, y: 0.0)
                            .offset(x: 3, y: 3)
                    }
                })
                
                Spacer()
                
                Button(action: {
                    self.selectedIndex = 4
                }, label: {
                    Image(systemName: self.selectedIndex == 4 ? "person.fill" : "person")
                        .foregroundColor(self.selectedIndex == 4 ? Color("selected") : Color(#colorLiteral(red: 0.7788327932, green: 0.8124979138, blue: 0.8336980939, alpha: 1)))
                })
            }
            .padding(.horizontal, 40)
            .padding(.bottom, 40)
            .font(.system(size: 26))
            .frame(height: 100)
            .background(Color("background"))
            .cornerRadius(40)
            
        }
        .edgesIgnoringSafeArea(.bottom)
    }
}

struct CustomTabView_Previews: PreviewProvider {
    static var previews: some View {
        CustomTabView(selectedIndex: .constant(3))
    }
}
