//
//  CardView.swift
//  SundayDribble
//
//  Created by Jessica Mallian on 3/5/23.
//

import SwiftUI

struct CardView: View {
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(Color("cardBackground"))
                .frame(height: 250)
                .cornerRadius(40)
            Circle()
                .frame(height: 200)
                .foregroundColor(Color("appBackground"))
            VStack {
                Text("78%")
                    .font(.title)
                    .bold()
                Text("Scanning...")
            }
            .foregroundColor(.white)
        }
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
            .padding()
    }
}
