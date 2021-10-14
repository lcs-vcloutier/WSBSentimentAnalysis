//
//  Model.swift
//  WSBSentimentAnalysis
//
//  Created by Vincent Cloutier on 2021-10-14.
//

import Foundation

// CREATING A DATA TYPE TO STORE EACH STOCK
struct Stock: Decodable {
    let no_of_comments: Int
    let sentiment: String
    let sentiment_score: Float
    let Ticker: String
}
