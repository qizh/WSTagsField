//
//  WSTag.swift
//  Whitesmith
//
//  Created by Ricardo Pereira on 12/05/16.
//  Copyright © 2016 Whitesmith. All rights reserved.
//

import Foundation

public struct WSTag: Hashable, Equatable {
    public let text: String
    public let context: AnyHashable?
	

    public init(_ text: String, context: AnyHashable? = nil) {
        self.text = text
        self.context = context
    }
	
	static let none = WSTag("")
}
