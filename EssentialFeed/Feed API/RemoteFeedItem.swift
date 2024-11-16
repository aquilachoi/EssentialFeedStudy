//
//  RemoteFeedItem.swift
//  EssentialFeed
//
//  Created by HW-11135 on 11/16/24.
//

import Foundation

struct RemoteFeedItem: Decodable {
    let id: UUID
    let description: String?
    let location: String?
    let image: URL
    
    var item: FeedItem {
        return FeedItem(id: id, description: description, location: location, imageURL: image)
    }
}
