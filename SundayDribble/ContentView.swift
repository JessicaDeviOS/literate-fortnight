//
//  ContentView.swift
//  SundayDribble
//
//  Created by Jessica Mallian on 3/5/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color("appBackground")
                .ignoresSafeArea()
            Rectangle()
                .foregroundColor(Color("cardBackground"))
                .frame(height: 250)
                .cornerRadius(40)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
