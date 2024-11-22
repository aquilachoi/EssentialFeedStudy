//
//  SharedTestHelpers.swift
//  EssentialFeedTests
//
//  Created by 450635 on 11/22/24.
//

import Foundation

func anyURL() -> URL {
    return URL(string: "http://any-url.com")!
}

func anyNSError() -> NSError {
    return NSError(domain: "any error", code: 0)
}
