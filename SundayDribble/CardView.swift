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
                .frame(height: 220)
                .cornerRadius(40)
            CircleProgressView()
        }
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
            .padding()
    }
}
