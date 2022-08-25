//
//  ProfileView.swift
//  InstgramClone
//
//  Created by Syber Expertise on 26/12/2021.
//

import SwiftUI

struct ProfileView: View {
    var images: [String] = ["profile"]
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack {
                ProfileMeta()
                
                VStack(spacing: 0) {
                    HStack {
                        Spacer()
                        
                        Image("grid")
                        
                        Spacer()
                        
                        Image("posts-icon")
                        
                        Spacer()
                        
                    }
                    .padding()
                    
                    LazyVGrid(columns: [GridItem(.flexible()),GridItem(.flexible()),GridItem(.flexible())], spacing: 0) {
                        Image("profile")
                            .resizable()
                            .frame(width:132, height: 125)
                        Image("profile2")
                            .resizable()
                            .frame(width:132, height: 125)
                        Image("profile3")
                            .resizable()
                            .frame(width:132, height: 125)
                        Image("profile4")
                            .resizable()
                            .frame(width:132, height: 125)
                        Image("profile5")
                            .resizable()
                            .frame(width:132, height: 125)
                        Image("profile6")
                            .resizable()
                            .frame(width:132, height: 125)
                        Image("profile7")
                            .resizable()
                            .frame(width:132, height: 125)
                        Image("profile8")
                            .resizable()
                            .frame(width:132, height: 125)
                        Image("dog")
                            .resizable()
                            .frame(width:132, height: 125)
                        
                    }
                    
                }
                
                Spacer()
            }
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}

struct listCell: View {
    var body: some View {
        Image("profile")
            .resizable()
            .frame(width:125, height: 125)
    }
}

fileprivate struct Header: View {
    var body: some View {
        HStack(spacing: 20) {
            Text("username")
                .fontWeight(.bold)
                .font(.title2)
            
            Spacer()
            
            Image("add")
            
            Image("three-lines")
        }
    }
}

struct ProfilePicView: View {
    var body: some View {
        VStack {
            Image("profile-pic")
                .resizable()
                .frame(width: 80, height: 80)
                .cornerRadius(50)
        }
        .overlay(
            Circle()
                .stroke(LinearGradient(colors: [.red, .purple, .red, .orange, .yellow, .orange], startPoint: .topLeading, endPoint: .bottomTrailing), lineWidth: 2.3)
                .frame(width: 88, height: 88)
        )
        .frame(width: 90, height: 90)
    }
}

struct PicAndFollowers: View {
    var body: some View {
        HStack {
            ProfilePicView()
            
            Spacer()
            
            VStack {
                Text("0")
                    .fontWeight(.semibold)
                    .font(.title3)
                
                Text("Post")
                    .fontWeight(.medium)
                    .font(.body)
            }
            
            Spacer()
            
            VStack {
                Text("0")
                    .fontWeight(.semibold)
                    .font(.title3)
                
                Text("Followers")
                    .fontWeight(.medium)
                    .font(.body)
            }
            
            Spacer()
            
            VStack {
                Text("0")
                    .fontWeight(.semibold)
                    .font(.title3)
                
                Text("Following")
                    .fontWeight(.medium)
                    .font(.body)
            }
            
        }
    }
}

struct Bio: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Username")
                .font(.title3)
                .fontWeight(.semibold)
            
            Text("A developer who loves life and coding, hates captalisim.")
                .fontWeight(.regular)
                .font(.subheadline)
        }
        
        Button {
            
        } label: {
            Text("Edit Profile")
                .foregroundColor(.black)
                .fontWeight(.semibold)
                .padding(.vertical, 7)
        }
        .frame(maxWidth: .infinity)
        .overlay(
            RoundedRectangle(cornerRadius: 5)
                .stroke(Color.gray, lineWidth: 0.5)
        )
    }
}

fileprivate struct Stories: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 15) {
                Story(image: "profile2", name: "story 1",readIndicator: true)
                Story(image: "profile3", name: "story 2", readIndicator: true)
                Story(image: "profile5", name: "story 3", readIndicator: true)
                Image("circle-add-button")
                
            }
            .padding(.horizontal, 10)
        }
    }
}

struct ProfileMeta: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Header()
            
            PicAndFollowers()
            
            Bio()
            
            Stories()
            
        }
        .padding(.horizontal, 15)
        .padding(.vertical, 8)
    }
}
