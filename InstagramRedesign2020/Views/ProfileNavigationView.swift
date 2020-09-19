//
//  ProfileNavigationView.swift
//  InstagramRedesign2020
//
//  Created by Raphael Cerqueira on 18/09/20.
//

import SwiftUI

struct ProfileNavigationView: View {
    var body: some View {
        HStack {
            Button(action: {}, label: {
                Image(systemName: "gearshape")
                    .resizable()
                    .foregroundColor(Color(#colorLiteral(red: 0.7466882467, green: 0.7851133943, blue: 0.8106113076, alpha: 1)))
                    .scaledToFit()
                    .frame(width: 30)
            })
            
            Spacer()
            
            Button(action: {}, label: {
                HStack {
                    Text("manuelroviradesign")
                        .font(.system(size: 17, weight: .bold))
                    
                    Image(systemName: "chevron.down")
                }
                .foregroundColor(Color.gray)
            })
            
            Spacer()
            
            Button(action: {}, label: {
                VStack(alignment: .trailing, spacing: 6) {
                    Capsule()
                        .frame(width: 25, height: 3)
                    
                    Capsule()
                        .frame(width: 15, height: 3)
                }
                .foregroundColor(Color(#colorLiteral(red: 0.7466882467, green: 0.7851133943, blue: 0.8106113076, alpha: 1)))
            })
        }
    }
}

struct ProfileNavigationView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileNavigationView()
    }
}
