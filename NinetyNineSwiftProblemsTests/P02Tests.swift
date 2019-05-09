//
//  P02Tests.swift
//  NinetyNineSwiftProblemsTests
//
//  Created by Uday Pandey on 03/05/2019.
//  Copyright © 2019 Uday Pandey. All rights reserved.
//

@testable import NinetyNineSwiftProblems
import XCTest

class P02Tests: XCTestCase {
    override func setUp() {
        super.setUp()
    }

    override func tearDown() {
        super.tearDown()
    }

    func testP0101() {
        let node = Node<Int>(6)!
        XCTAssertEqualNil(node.secondLast, nil, "Invalid last value")
    }

    func testP0102() {
        let node = Node<Int>(5, 6)!
        XCTAssertEqual(node.secondLast, 5, "Invalid last value")
    }

    func testP0103() {
        let node = Node<Int>(6, 2, 3, 4, 9)!
        XCTAssertEqual(node.secondLast, 4, "Invalid last value")
    }

    func testP0104() {
        let list = [6, 2, 3, 4, 9]
        XCTAssertEqual(list.secondLast, 4, "Invalid last value")
    }

    func testP0105() {
        let list: [Int] = []
        XCTAssertEqualNil(list.secondLast, nil, "Invalid last value")
    }
}
