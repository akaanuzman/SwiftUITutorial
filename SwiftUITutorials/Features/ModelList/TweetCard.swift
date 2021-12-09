//
//  TweetCard.swift
//  SwiftUITutorials
//
//  Created by Ahmet Kaan UZMAN on 10.12.2021.
//

import SwiftUI

struct TweetCard: View {
    let tweet: TweetModel
    var body: some View {
        VStack {
            Spacer()
            Text(tweet.userName).font(.title)
            Text(tweet.body).font(.title3)
            if tweet.likeCount != nil {
                HStack {
                    Image(systemName: "heart.fill").foregroundColor(.pink)
                    Text("\(tweet.likeCount!)").fontWeight(.light)
                }
            }
            Spacer()
        }.padding(2).frame(height: 100, alignment: .top).overlay(RoundedRectangle(cornerRadius: 10).stroke(.gray, lineWidth: 2)).padding(2)
    }
}

struct TweetCard_Previews: PreviewProvider {
    static var previews: some View {
        TweetCard(tweet: TweetModel.fakeTweet).previewLayout(.sizeThatFits)
    }
}
