//
//  Post.swift
//  InstgramClone
//
//  Created by Syber Expertise on 25/12/2021.
//

import SwiftUI

struct Post: View {
    var profileImage: String = "profile"
    var name: String = "Monzer"
    var postImage: String = "profile7"
    var description: String = "Love you babe 😘"
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            PostHeader(image: profileImage, name: name)
            
            PostContent(postImage: postImage)
            
            PostFooter(profileImage: profileImage, description: description)
            
        }
    }
}

struct Post_Previews: PreviewProvider {
    static var previews: some View {
        Post()
    }
}

struct PostHeader: View {
    var image: String = ""
    var name: String = ""
    
    var body: some View {
        HStack {
            HStack {
                Image(image)
                    .resizable()
                    .frame(width: 30, height: 30)
                    .cornerRadius(50)
                
                Text(name)
                    .font(.caption)
                    .fontWeight(.bold)
            }
            
            Spacer()
            
            Image("more")
        }
        .padding(.vertical, 10)
        .padding(.horizontal, 8)
    }
}

struct PostContent: View {
    var postImage: String = ""
    
    var body: some View {
        VStack(spacing: 0) {
            Image(postImage)
                .resizable()
                .frame(width: .infinity)
                .aspectRatio(contentMode: .fit)
            
            HStack {
                HStack(spacing: 10) {
                    Image("heart")
                    Image("comment")
                    Image("share")
                }
                
                Spacer()
                
                Image("bookmark")
            }
            .padding(.horizontal, 12)
            .padding(.vertical, 9)
            
        }
    }
}

struct PostFooter: View {
    var profileImage: String = ""
    var description: String = ""
    
    var body: some View {
        Text("Liked by ameen and others")
            .font(.footnote)
            .frame(width: .infinity)
            .padding(.horizontal, 12)
        
        Text(description)
            .font(.footnote)
            .frame(width: .infinity)
            .padding(.horizontal, 12)
        
        HStack {
            HStack(spacing: 7) {
                Image(profileImage)
                    .resizable()
                    .frame(width: 24, height: 25)
                    .cornerRadius(50)
                
                Text("Add Comment")
                    .font(.caption)
                    .foregroundColor(.secondary)
            }
            
            Spacer()
            
            HStack {
                Text("😍")
                Text("😂")
                Image(systemName: "plus.circle")
                    .foregroundColor(.secondary)
            }
        }
        .padding(.horizontal, 12)
        .padding(.vertical, 9)
    }
}
