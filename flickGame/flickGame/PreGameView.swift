//
//  PreGameView.swift
//  flickGame
//
//  Created by okitsu teppei on 2020/07/13.
//  Copyright © 2020 okitsu teppei. All rights reserved.
//

import SwiftUI

struct PreGameView: View {
    @EnvironmentObject var model: Model
    
    var body: some View {
        VStack {
            Text("PreGameView")
                .font(.headline)
                .fontWeight(.heavy)
            Button("セレクト画面へ") {
                self.model.preGameViewPushed = false
            }
        }
    }
}

struct PreGameView_Previews: PreviewProvider {
    static var previews: some View {
        PreGameView()
    }
}
