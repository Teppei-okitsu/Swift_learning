//
//  testStageSelect.swift
//  flickGame
//
//  Created by okitsu teppei on 2020/07/13.
//  Copyright © 2020 okitsu teppei. All rights reserved.
//

import SwiftUI

struct TestStageSelect: View {
    @EnvironmentObject var model: Model
    
    var body: some View {
        NavigationView {
            VStack {
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                NavigationLink(destination: PreGameView(), isActive: self.$model.preGameViewPushed){
                    Button(action: {
                        self.model.preGameViewPushed = true
                    }){
                        Text("次へ")
                    }
                    
                }
            }
        }
    }
}

struct testStageSelect_Previews: PreviewProvider {
    static var previews: some View {
        TestStageSelect()
    }
}
