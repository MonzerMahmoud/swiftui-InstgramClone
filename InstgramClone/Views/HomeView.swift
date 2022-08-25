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
            
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

fileprivate struct Header: View {
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


fileprivate struct Stories: View {
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
