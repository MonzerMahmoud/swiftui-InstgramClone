//
//  ContentView.swift
//  InstgramClone
//
//  Created by Syber Expertise on 25/12/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabBar()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

fileprivate struct TabBar: View {
    var body: some View {
        VStack(spacing: 0) {
            
            TabView {
                HomeView()
                    .tabItem {
                        Image("home")
                    }
                
                Image("search")
                    .tabItem {
                        Image("search")
                    }
                
                Image("reels")
                    .tabItem {
                        Image("reels")
                    }
                
                Image("shop")
                    .tabItem {
                        Image("shop")
                    }
                
                ProfileView()
//                    .resizable()
//                    .frame(width: 21, height: 21)
//                    .cornerRadius(50)
                    .tabItem {
                        Image("tab-profile")
                    }
            }
            
        }
    }
}
