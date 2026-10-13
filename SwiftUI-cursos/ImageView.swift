//
//  ImageView.swift
//  SwiftUI-cursos
//
//  Created by Personal on 13/10/2026.
//

import SwiftUI

struct ImageView: View {
    var body: some View {
        VStack{
            Image("hogarpata").resizable()
                .padding(50)
                .frame(width: 300, height: 300)
                .background(Color.black)
                .clipShape(Circle())
                .shadow(color: Color.orange, radius: 5)
                
            Image(systemName: "person.fill.badge.minus")
                
        }
    }
}

#Preview {
    ImageView()
}
