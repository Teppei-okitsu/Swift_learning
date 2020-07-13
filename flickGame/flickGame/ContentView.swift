//
//  ContentView.swift
//  flickGame
//
//  Created by okitsu teppei on 2020/07/13.
//  Copyright © 2020 okitsu teppei. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("I'm SwiftUI")
                .font(.title)
                .fontWeight(.heavy)
                .foregroundColor(.red)
            HStack(spacing: 1.5) {
                Text("welcome to SwiftUI")
                    .font(.subheadline)
                Spacer()
                Text("Swift UI")
                    .font(.subheadline)
                Spacer()
                Text("UI")
                    .font(.subheadline)
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
