//
//  ContentView.swift
//  LearnSourceTree
//
//  Created by Trần Chí Thiện on 3/3/26.
//

import SwiftUI

struct ContentView: View {
    
    @State private var showDetail = false
    
    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                
                Text("Welcome to Git Practice")
                    .font(.title)
                    .fontWeight(.bold)
                Text("Show DetailView")
                
                Button("Show Detail") {
                    showDetail = true
                }
                .buttonStyle(.borderedProminent)
                
                NavigationLink(
                    destination: DetailView(),
                    isActive: $showDetail
                ) {
                    EmptyView()
                }
            }
            .navigationTitle("Home")
        }
    }
}

#Preview {
    ContentView()
}
