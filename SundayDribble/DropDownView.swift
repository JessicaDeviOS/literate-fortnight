//
//  DropDownView.swift
//  SundayDribble
//
//  Created by Jessica Mallian on 3/5/23.
//

import SwiftUI

// TODO: I don't think this name is great
struct DropDownView: View {
    public let text: String
    public let subtext: String
    public let isDoneScanning: Bool
    
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(Color("componentForeground"))
                .cornerRadius(30)
                .frame(height: 80)
            HStack(spacing: 5) {
                Text("<")
                Image(systemName: "folder.fill")
                Text("Cache Junk")
                Spacer()
                Text("3.5GB")
                    .foregroundColor(.gray)
                if isDoneScanning {
                    Image(systemName: "checkmark")
                        .foregroundColor(.green)
                } else {
                    ProgressView()
                        .tint(.yellow)
                }
            }
            .padding()
            .foregroundColor(.white)
        }
    }
}

struct DropDownView_Previews: PreviewProvider {
    static var previews: some View {
        DropDownView(text: "Cache Junk", subtext: "3.5GM", isDoneScanning: false)
    }
}
