//
//  ContentView.swift
//  HackerNews-SwiftUI
//
//  Created by Evans Owamoyo on 14.08.2021.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        NavigationView {
            List(networkManager.news) { element in
                NavigationLink(
                    destination: DetailsView(url: element.url))
                {
                    HStack {
                        Text("\(element.points)")
                        Text(element.title)
                    }
                }
            }.navigationBarTitle("HXR News")
        }
        .onAppear {
            networkManager.fetchNews()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
