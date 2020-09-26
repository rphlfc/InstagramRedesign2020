//
//  CustomNavigationView.swift
//  InstagramRedesign2020
//
//  Created by Raphael Cerqueira on 16/09/20.
//

import SwiftUI

struct CustomNavigationView: View {
    var body: some View {
        ZStack {
            HStack {
                Button(action: {}, label: {
                    Image(systemName: "gearshape")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 30)
                })
                
                Spacer()
                
                Button(action: {}, label: {
                    ZStack(alignment: .bottomTrailing) {
                        Image(systemName: "envelope")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 30)
                        
                        Circle()
                            .fill(Color(#colorLiteral(red: 0.9987388253, green: 0.009666659869, blue: 0.3012677729, alpha: 1)))
                            .frame(width: 10, height: 10)
                            .shadow(color: Color(#colorLiteral(red: 0.9987388253, green: 0.009666659869, blue: 0.3012677729, alpha: 1)), radius: 10, x: 0.0, y: 0.0)
                            .offset(x: 5, y: -2)
                    }
                })
            }
            .foregroundColor(Color(#colorLiteral(red: 0.7466882467, green: 0.7851133943, blue: 0.8106113076, alpha: 1)))
            .padding(.horizontal)
            
            Image("instagram")
                .resizable()
                .scaledToFit()
                .frame(width: 110)
                .foregroundColor(Color("logo"))
        }
    }
}

struct CustomNavigationView_Previews: PreviewProvider {
    static var previews: some View {
        CustomNavigationView()
    }
}
