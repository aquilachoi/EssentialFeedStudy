//
//  FeedStore.swift
//  EssentialFeed
//
//  Created by HW-11135 on 11/16/24.
//

import Foundation

public enum RetrieveCachedFeedResult {
    case empty
    case found(feed: [LocalFeedImage], timestamp: Date)
    case failure(Error)
}

public protocol FeedStore {
    typealias DeletionCompletion = (Error?) -> Void
    typealias InsertionCompletion = (Error?) -> Void
    typealias RetrievalCompletion = (RetrieveCachedFeedResult) -> Void
    
    /// 응답 처리 시 적절한 thread 처리가 필요합니다.
    func deleteCachedFeed(completion: @escaping (Error?) -> Void)
    
    /// 응답 처리 시 적절한 thread 처리가 필요합니다.
    func insert(_ feed: [LocalFeedImage], timestamp: Date, completion: @escaping InsertionCompletion)
    
    /// 응답 처리 시 적절한 thread 처리가 필요합니다.
    func retrieve(completion: @escaping RetrievalCompletion)
}
