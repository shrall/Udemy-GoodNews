//
//  Article.swift
//  GoodNews
//
//  Created by Marshall Kurniawan on 08/02/23.
//

import Foundation

struct ArticleList: Decodable {
    // key disini itu harus sesuai sama json yg di dapet
//    {
//        articles: ["lorem ipsum", "lorem ipsum"]
//    }
    let articles: [Article]
}

struct Article: Decodable {
    let title: String?
    let description: String?
}
