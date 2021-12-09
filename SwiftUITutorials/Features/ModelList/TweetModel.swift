//
//  TweetModel.swift
//  SwiftUITutorials
//
//  Created by Ahmet Kaan UZMAN on 10.12.2021.
//

import Foundation

struct TweetModel: Identifiable {
    var id: UUID = UUID()
    let userName: String
    var body: String
    var likeCount: Int?
}


extension TweetModel {
    /// Sample Tweet Arrays
    static let tweets = [
        TweetModel(userName: "akaanuzman", body: "hello", likeCount: 10),
        TweetModel(userName: "akaanuzmann", body: "hello1", likeCount: 20),
        TweetModel(userName: "akaanuzmannn", body: "hello2", likeCount: 30),
        TweetModel(userName: "tugce.eed", body: "hello", likeCount: 10),
        TweetModel(userName: "tugce_eed", body: "hello1", likeCount: 20),
    ]

    static let fakeTweet = TweetModel(userName: "fake", body: "hello", likeCount: 10)
}
