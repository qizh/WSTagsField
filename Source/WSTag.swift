//
//  WSTag.swift
//  Whitesmith
//
//  Created by Ricardo Pereira on 12/05/16.
//  Copyright © 2016 Whitesmith. All rights reserved.
//

import Foundation
import UIKit

public protocol WSStyledTag {
	var text: String { get }
	var style: WSTagStyle? { get }
}

public struct WSTagStyle: Hashable {
	public let backgroundColor: UIColor
	
	public init(backgroundColor: UIColor) {
		self.backgroundColor = backgroundColor
	}
}

public struct WSTag<Element: Hashable>: WSStyledTag, Hashable {
	public typealias Style = WSTagStyle
	
	public let text: String
	public let context: Element?
	public let style: Style?
	
	public init(_ text: String, context: Element? = nil, style: Style? = nil) {
		self.text = text
		self.context = context
		self.style = style
	}
}
