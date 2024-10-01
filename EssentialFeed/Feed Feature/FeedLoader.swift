//
//  FeedLoader.swift
//  EssentialFeed
//
//  Created by 450635 on 8/14/24.
//

import Foundation

enum LoadFeedResult {
    case success([FeedItem])
    case error(Error)
}

protocol FeedLoader {
    func load(completion: @escaping (LoadFeedResult) -> Void)
}

