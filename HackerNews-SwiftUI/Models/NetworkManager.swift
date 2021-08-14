//
//  NetworkManager.swift
//  HackerNews-SwiftUI
//
//  Created by Evans Owamoyo on 14.08.2021.
//


import SwiftUI

class NetworkManager: ObservableObject {
    
    @Published var news: [NewsData] = []
    
    func fetchNews() {
        if let url = URL(string: "https://hn.algolia.com/api/v1/search?tags=front_page") {
            let task = URLSession.shared.dataTask(with: url) { data, response, error in
                if let e = error {
                    print(e)
                } else {
                    do {
                    let result = try JSONDecoder().decode(NewsResult.self, from: data!)
                        DispatchQueue.main.async {
                            self.news = result.hits
                        }
                    } catch {
                        print(error)
                    }
                }
            }
            
            task.resume()
        }
    }
}
