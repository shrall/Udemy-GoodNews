//
//  ArticleViewModel.swift
//  GoodNews
//
//  Created by Marshall Kurniawan on 08/02/23.
//

import Foundation

struct ArticleListViewModel {
    let articles: [Article]
}

extension ArticleListViewModel{
    var numberOfSections: Int{
        return 1
    }
    
    func numberOfRowsInSection (_ section: Int) -> Int{
        return self.articles.count
    }
    
    func articleAtIndex(_ index: Int) -> ArticleViewModel {
        let article = self.articles[index]
        return ArticleViewModel(article)
    }
}

struct ArticleViewModel {
    private let article: Article
}

extension ArticleViewModel {
    // ini itu buat ngeset parameter yang diterima waktu nge initiate
    init(_ article: Article){
        self.article = article
    }
}

extension ArticleViewModel {
    var title: String{
        return self.article.title ?? "No Title"
    }
    
    var description: String {
        return self.article.description ?? "No Description"
    }
}
