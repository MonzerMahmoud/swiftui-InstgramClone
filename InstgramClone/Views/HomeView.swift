//
//  HomeView.swift
//  InstgramClone
//
//  Created by Syber Expertise on 25/12/2021.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack(spacing: 0) {
            Header()
            
            ScrollView(.vertical, showsIndicators: true) {
                
                Stories()
                
                Divider()
                
                Post()
                
                Post(profileImage: "profile2", name: "Saoudi", postImage: "profile5", description: "With ma G")
                
                Post(profileImage: "profile2", name: "Zeco", postImage: "dog", description: "Waht a day")
            }
            
            VStack {
                Divider()
                
                HStack {
                    Image("home")
                    Spacer()
                    Image("search")
                    Spacer()
                    Image("reels")
                    Spacer()
                    Image("shop")
                    Spacer()
                    Image("profile")
                        .resizable()
                        .frame(width: 21, height: 21)
                        .cornerRadius(50)
                }
                .padding(.horizontal, 25)
                .padding(.top, 10)
            }
            
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

struct Header: View {
    var body: some View {
        HStack(spacing: 20) {
            Image("logo")
            Spacer()
            Image("add")
            Image("heart")
            Image("messenger")
        }
        .padding(.horizontal, 15)
        .padding(.vertical, 3)
    }
}

struct Story: View {
    var image: String = "profile"
    var name: String = "Monzer"
    
    var body: some View {
        VStack {
            VStack {
                Image(image)
                    .resizable()
                    .frame(width: 60, height: 60)
                    .cornerRadius(50)
            }
            .overlay(
                Circle()
                    .stroke(LinearGradient(colors: [.red, .purple, .red, .orange, .yellow, .orange], startPoint: .topLeading, endPoint: .bottomTrailing), lineWidth: 2.3)
                    .frame(width: 68, height: 68)
            )
            .frame(width: 70, height: 70)
            
            Text(name)
                .font(.caption)
        }
    }
}

struct Stories: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 15) {
                Story()
                Story(image: "profile2", name: "Ameen")
                Story(image: "profile3", name: "Saoudi")
                Story(image: "profile4", name: "Zeco")
                Story(image: "profile5", name: "Adlan")
                Story(image: "profile6", name: "Marwan")
                Story(image: "profile7", name: "Mano")
                Story(image: "profile8", name: "Shony")
            }
            .padding(.horizontal, 10)
        }
        .padding(.vertical)
    }
}

