//
//  CircleProgressView.swift
//  SundayDribble
//
//  Created by Jessica Mallian on 3/5/23.
//

import SwiftUI

struct CircleProgressView: View {
    @State var progress = 0.78
    private let lineWidth: CGFloat = 20
    
    var body: some View {
        ZStack {
            Circle()
                .foregroundColor(Color("appBackground"))
            Circle()
                .stroke(.white, lineWidth: lineWidth)
            Circle()
                .trim(from: 0, to: progress)
                .stroke(Color("progressColor"), style: StrokeStyle(lineWidth: lineWidth, lineCap: .round))
                .rotationEffect(.degrees(-90))
                .animation(.easeOut, value: progress)
            VStack {
                Text("\(progress * 100, specifier: "%.0f")%")
                    .font(.title)
                    .bold()
                if progress < 1.0 {
                    Text("Scanning...")
                }
            }
            .foregroundColor(.white)
        }
        .frame(height: 180)
    }
}

struct CircleProgressView_Previews: PreviewProvider {
    static var previews: some View {
        CircleProgressView()
    }
}
