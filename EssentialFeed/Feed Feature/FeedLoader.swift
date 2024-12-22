//
//  Copyright © 2018 Essential Developer. All rights reserved.
//

import Foundation

@frozen
public enum LoadFeedResult {
	case success([FeedImage])
	case failure(Error)
}

public protocol FeedLoader {
	func load(completion: @escaping (LoadFeedResult) -> Void)
}
