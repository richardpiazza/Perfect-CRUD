//
//  Equality.swift
//  PerfectCRUD
//
//  Created by Kyle Jessup on 2018-02-18.
//

import Foundation

// ==
public func == <A: Codable>(lhs: KeyPath<A, Int>, rhs: Int) -> CRUDBooleanExpression {
	return RealBooleanExpression(.equality(lhs: .keyPath(lhs), rhs: .integer(rhs)))
}
public func == <A: Codable>(lhs: KeyPath<A, String>, rhs: String) -> CRUDBooleanExpression {
	return RealBooleanExpression(.equality(lhs: .keyPath(lhs), rhs: .string(rhs)))
}
public func == <A: Codable>(lhs: KeyPath<A, Double>, rhs: Double) -> CRUDBooleanExpression {
	return RealBooleanExpression(.equality(lhs: .keyPath(lhs), rhs: .decimal(rhs)))
}
public func == <A: Codable>(lhs: KeyPath<A, [UInt8]>, rhs: [UInt8]) -> CRUDBooleanExpression {
	return RealBooleanExpression(.equality(lhs: .keyPath(lhs), rhs: .blob(rhs)))
}
public func == <A: Codable>(lhs: KeyPath<A, Bool>, rhs: Bool) -> CRUDBooleanExpression {
	return RealBooleanExpression(.equality(lhs: .keyPath(lhs), rhs: .bool(rhs)))
}
public func == <A: Codable>(lhs: KeyPath<A, UUID>, rhs: UUID) -> CRUDBooleanExpression {
	return RealBooleanExpression(.equality(lhs: .keyPath(lhs), rhs: .uuid(rhs)))
}
public func == <A: Codable>(lhs: KeyPath<A, UUID>, rhs: Date) -> CRUDBooleanExpression {
	return RealBooleanExpression(.equality(lhs: .keyPath(lhs), rhs: .date(rhs)))
}
// == ?
public func == <A: Codable>(lhs: KeyPath<A, Int?>, rhs: Int?) -> CRUDBooleanExpression {
	if let rhs = rhs {
		return RealBooleanExpression(.equality(lhs: .keyPath(lhs), rhs: .integer(rhs)))
	}
	return RealBooleanExpression(.equality(lhs: .keyPath(lhs), rhs: .null))
}
public func == <A: Codable>(lhs: KeyPath<A, String?>, rhs: String?) -> CRUDBooleanExpression {
	if let rhs = rhs {
		return RealBooleanExpression(.equality(lhs: .keyPath(lhs), rhs: .string(rhs)))
	}
	return RealBooleanExpression(.equality(lhs: .keyPath(lhs), rhs: .null))
}
public func == <A: Codable>(lhs: KeyPath<A, Double?>, rhs: Double?) -> CRUDBooleanExpression {
	if let rhs = rhs {
		return RealBooleanExpression(.equality(lhs: .keyPath(lhs), rhs: .decimal(rhs)))
	}
	return RealBooleanExpression(.equality(lhs: .keyPath(lhs), rhs: .null))
}
public func == <A: Codable>(lhs: KeyPath<A, [UInt8]?>, rhs: [UInt8]?) -> CRUDBooleanExpression {
	if let rhs = rhs {
		return RealBooleanExpression(.equality(lhs: .keyPath(lhs), rhs: .blob(rhs)))
	}
	return RealBooleanExpression(.equality(lhs: .keyPath(lhs), rhs: .null))
}
public func == <A: Codable>(lhs: KeyPath<A, Bool?>, rhs: Bool?) -> CRUDBooleanExpression {
	if let rhs = rhs {
		return RealBooleanExpression(.equality(lhs: .keyPath(lhs), rhs: .bool(rhs)))
	}
	return RealBooleanExpression(.equality(lhs: .keyPath(lhs), rhs: .null))
}
public func == <A: Codable>(lhs: KeyPath<A, UUID?>, rhs: UUID?) -> CRUDBooleanExpression {
	if let rhs = rhs {
		return RealBooleanExpression(.equality(lhs: .keyPath(lhs), rhs: .uuid(rhs)))
	}
	return RealBooleanExpression(.equality(lhs: .keyPath(lhs), rhs: .null))
}
public func == <A: Codable>(lhs: KeyPath<A, UUID?>, rhs: Date?) -> CRUDBooleanExpression {
	if let rhs = rhs {
		return RealBooleanExpression(.equality(lhs: .keyPath(lhs), rhs: .date(rhs)))
	}
	return RealBooleanExpression(.equality(lhs: .keyPath(lhs), rhs: .null))
}
// !=
public func != <A: Codable>(lhs: KeyPath<A, Int>, rhs: Int) -> CRUDBooleanExpression {
	return RealBooleanExpression(.inequality(lhs: .keyPath(lhs), rhs: .integer(rhs)))
}
public func != <A: Codable>(lhs: KeyPath<A, String>, rhs: String) -> CRUDBooleanExpression {
	return RealBooleanExpression(.inequality(lhs: .keyPath(lhs), rhs: .string(rhs)))
}
public func != <A: Codable>(lhs: KeyPath<A, Double>, rhs: Double) -> CRUDBooleanExpression {
	return RealBooleanExpression(.inequality(lhs: .keyPath(lhs), rhs: .decimal(rhs)))
}
public func != <A: Codable>(lhs: KeyPath<A, [UInt8]>, rhs: [UInt8]) -> CRUDBooleanExpression {
	return RealBooleanExpression(.inequality(lhs: .keyPath(lhs), rhs: .blob(rhs)))
}
public func != <A: Codable>(lhs: KeyPath<A, Bool>, rhs: Bool) -> CRUDBooleanExpression {
	return RealBooleanExpression(.inequality(lhs: .keyPath(lhs), rhs: .bool(rhs)))
}
public func != <A: Codable>(lhs: KeyPath<A, UUID>, rhs: UUID) -> CRUDBooleanExpression {
	return RealBooleanExpression(.inequality(lhs: .keyPath(lhs), rhs: .uuid(rhs)))
}
public func != <A: Codable>(lhs: KeyPath<A, UUID>, rhs: Date) -> CRUDBooleanExpression {
	return RealBooleanExpression(.inequality(lhs: .keyPath(lhs), rhs: .date(rhs)))
}
// != ?
public func != <A: Codable>(lhs: KeyPath<A, Int?>, rhs: Int?) -> CRUDBooleanExpression {
	if let rhs = rhs {
		return RealBooleanExpression(.inequality(lhs: .keyPath(lhs), rhs: .integer(rhs)))
	}
	return RealBooleanExpression(.inequality(lhs: .keyPath(lhs), rhs: .null))
}
public func != <A: Codable>(lhs: KeyPath<A, String?>, rhs: String?) -> CRUDBooleanExpression {
	if let rhs = rhs {
		return RealBooleanExpression(.inequality(lhs: .keyPath(lhs), rhs: .string(rhs)))
	}
	return RealBooleanExpression(.inequality(lhs: .keyPath(lhs), rhs: .null))
}
public func != <A: Codable>(lhs: KeyPath<A, Double?>, rhs: Double?) -> CRUDBooleanExpression {
	if let rhs = rhs {
		return RealBooleanExpression(.inequality(lhs: .keyPath(lhs), rhs: .decimal(rhs)))
	}
	return RealBooleanExpression(.inequality(lhs: .keyPath(lhs), rhs: .null))
}
public func != <A: Codable>(lhs: KeyPath<A, [UInt8]?>, rhs: [UInt8]?) -> CRUDBooleanExpression {
	if let rhs = rhs {
		return RealBooleanExpression(.inequality(lhs: .keyPath(lhs), rhs: .blob(rhs)))
	}
	return RealBooleanExpression(.inequality(lhs: .keyPath(lhs), rhs: .null))
}
public func != <A: Codable>(lhs: KeyPath<A, Bool?>, rhs: Bool?) -> CRUDBooleanExpression {
	if let rhs = rhs {
		return RealBooleanExpression(.inequality(lhs: .keyPath(lhs), rhs: .bool(rhs)))
	}
	return RealBooleanExpression(.inequality(lhs: .keyPath(lhs), rhs: .null))
}
public func != <A: Codable>(lhs: KeyPath<A, UUID?>, rhs: UUID?) -> CRUDBooleanExpression {
	if let rhs = rhs {
		return RealBooleanExpression(.inequality(lhs: .keyPath(lhs), rhs: .uuid(rhs)))
	}
	return RealBooleanExpression(.inequality(lhs: .keyPath(lhs), rhs: .null))
}
public func != <A: Codable>(lhs: KeyPath<A, UUID?>, rhs: Date?) -> CRUDBooleanExpression {
	if let rhs = rhs {
		return RealBooleanExpression(.inequality(lhs: .keyPath(lhs), rhs: .date(rhs)))
	}
	return RealBooleanExpression(.inequality(lhs: .keyPath(lhs), rhs: .null))
}
