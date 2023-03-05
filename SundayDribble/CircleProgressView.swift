//
//  CircleProgressView.swift
//  SundayDribble
//
//  Created by Jessica Mallian on 3/5/23.
//

import SwiftUI

struct CircleProgressView: View {
    @State var progress = 0.25
    
    var body: some View {
        ZStack {
            Circle()
                .stroke(Color.pink.opacity(0.5), lineWidth: 30)
            Circle()
                .trim(from: 0, to: progress)
                .stroke(Color.pink, style: StrokeStyle(lineWidth: 30, lineCap: .round))
                .rotationEffect(.degrees(-90))
                .animation(.easeOut, value: progress)
        }
        .padding()
    }
}

struct CircleProgressView_Previews: PreviewProvider {
    static var previews: some View {
        CircleProgressView()
    }
}
