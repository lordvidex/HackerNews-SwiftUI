//
//  NewsData.swift
//  HackerNews-SwiftUI
//
//  Created by Evans Owamoyo on 14.08.2021.
//

import Foundation

struct NewsResult: Decodable {
    let hits: [NewsData]
}

struct NewsData: Decodable, Identifiable {
    let id: String
    let url: String?
    let title: String
    let points: Int
    
    private enum CodingKeys: String, CodingKey {
        case title,points,url, id = "objectID"
    }
}
