//
//  WebView.swift
//  HackerNews-SwiftUI
//
//  Created by Evans Owamoyo on 14.08.2021.
//

import SwiftUI
import WebKit

struct WebView: UIViewRepresentable {
    let url: String?
    
    func makeUIView(context: Context) -> WKWebView {
        WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let url = url,
           let validUrl = URL(string: url) {
            let request = URLRequest(url: validUrl)
            uiView.load(request)
        }
    }
    
    //    typealias UIViewType = WKWebView
    
    
}
