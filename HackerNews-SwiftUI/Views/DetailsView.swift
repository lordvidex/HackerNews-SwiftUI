//
//  DetailsView.swift
//  HackerNews-SwiftUI
//
//  Created by Evans Owamoyo on 14.08.2021.
//

import SwiftUI

struct DetailsView: View {
    
    let url: String?
    var body: some View {
        WebView(url: url)
            .navigationBarTitleDisplayMode(.inline)
    }
}

struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsView(url: "https://www.google.com")
    }
}
