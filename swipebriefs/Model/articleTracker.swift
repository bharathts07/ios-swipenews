//
//  articleTracker.swift
//  swipebriefs
//
//  Created by Bharath on 3/3/24.
//

import Foundation

struct NewsArticlesDB {
    let articles: [Article]
    
    init() {
        let article1 = Article(title: "test1", imageURLString: "https://test1.png", summary: "This is the summary1")
        let article2 = Article(title: "test2", imageURLString: "https://test2.png", summary: "This is the summary2")
        
        articles = [article1, article2].compactMap { $0 }
    }
    
    func getArticle(articleNumber: Int) -> Article? {
        guard articleNumber >= 0 && articleNumber < articles.count else { return nil }
        return articles[articleNumber]
    }
}

var articleNumber = 0;
