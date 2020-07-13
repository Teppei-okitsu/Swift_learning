//
//  TitleImage.swift
//  flickGame
//
//  Created by okitsu teppei on 2020/07/13.
//  Copyright © 2020 okitsu teppei. All rights reserved.
//

import SwiftUI

struct StageSelect: View {
    @EnvironmentObject var model: Model
    
    var body: some View {
        NavigationView {
            VStack(alignment: .center, spacing: 25.0) {
                VStack {
                    Text("フリックゲーム")
                        .font(.title)
                        .fontWeight(.ultraLight)
                    Text("このアプリはSwiftUIで作成されています")
                        .font(.subheadline)
                        .fontWeight(.thin)
                }
                HStack(spacing: 50.0) {
                        Button(action: {
                            self.model.preGameViewPushed = true
                        }){
                            Image("stage_select_easy")
                            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                            .overlay(
                                Circle().stroke(Color.gray, lineWidth: 2))
                                .shadow(radius: 2)
                        }
                        Button(action: {
                            self.model.preGameViewPushed = true
                        }){
                            Image("stage_select_nomal")
                            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                            .overlay(
                                Circle().stroke(Color.gray, lineWidth: 2))
                                .shadow(radius: 2)
                        }
                    
                }
                HStack(spacing: 50.0) {
                    Button(action: {
                        self.model.preGameViewPushed = true
                    }){
                        Image("stage_select_hard")
                        .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                        .overlay(
                            Circle().stroke(Color.gray, lineWidth: 2))
                            .shadow(radius: 2)
                    }
                    Button(action: {
                        self.model.preGameViewPushed = true
                    }){
                        Image("stage_select_setting")
                        .clipShape(Rectangle())
                            .overlay(Rectangle().stroke(Color.gray, lineWidth: 2)).shadow(radius: 2)
                    }
                }
            }
            .padding(50.0)
        }
        .padding()
    }
}

struct TitleImage_Previews: PreviewProvider {
    static var previews: some View {
        StageSelect()
    }
}
