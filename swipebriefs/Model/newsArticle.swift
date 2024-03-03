//
//  newsArticle.swift
//  swipebriefs
//
//  Created by Bharath on 3/3/24.
//

import Foundation

// Article will store enough information to render one article in Article View
struct Article {
    let title: String
    let imageURL: URL
    let summary: String
    
    init?(title: String, imageURLString: String, summary: String) {
        guard let url = URL(string: imageURLString) else { return nil }
        self.title = title
        self.imageURL = url
        self.summary = summary
    }
}
