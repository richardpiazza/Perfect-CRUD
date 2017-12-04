//
//  PerfectSwORMCoding.swift
//  PerfectSwORM
//
//  Created by Kyle Jessup on 2017-11-22.
//	Copyright (C) 2017 PerfectlySoft, Inc.
//
//===----------------------------------------------------------------------===//
//
// This source file is part of the Perfect.org open source project
//
// Copyright (c) 2015 - 2017 PerfectlySoft Inc. and the Perfect project authors
// Licensed under Apache License v2.0
//
// See http://perfect.org/licensing.html for license information
//
//===----------------------------------------------------------------------===//
//

import Foundation

struct SwORMDecoderError: Error {
	let msg: String
	init(_ m: String) {
		msg = m
		SwORMLogging.log(.error, m)
	}
}

struct SwORMEncoderError: Error {
	let msg: String
	init(_ m: String) {
		msg = m
		SwORMLogging.log(.error, m)
	}
}

struct ColumnKey : CodingKey {
	public var stringValue: String
	public var intValue: Int?
	public init?(stringValue: String) {
		self.stringValue = stringValue
		self.intValue = nil
	}
	public init?(intValue: Int) {
		self.stringValue = "\(intValue)"
		self.intValue = intValue
	}
	init(index: Int) {
		self.stringValue = "Index \(index)"
		self.intValue = index
	}
}