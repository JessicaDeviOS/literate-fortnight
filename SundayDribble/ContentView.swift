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
            VStack {
                CardView()
                HStack {
                    Text("Scanning...")
                        .foregroundColor(.white)
                        .font(.title2)
                        .bold()
                    Spacer()
                }
                DropDownView(text: "Cache Junk", subtext: "3.5GB", isDoneScanning: true)
                DropDownView(text: "Ad Junk", subtext: "", isDoneScanning: false)
                DropDownView(text: "Obsolete APKs", subtext: "", isDoneScanning: false)
                DropDownView(text: "Memory Junk", subtext: "3.5GB", isDoneScanning: true)
                Spacer()
            }
            .padding()
        }
        .navigationBarTitleDisplayMode(.inline)
        .toolbarBackground(.red, for: .navigationBar) // TODO: why doesn't this work?
        .toolbar {
            ToolbarItem(placement: .principal) {
                Text("Junk Cleaner")
                    .font(.title)
                    .foregroundColor(.white)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            ContentView()
        }
    }
}
