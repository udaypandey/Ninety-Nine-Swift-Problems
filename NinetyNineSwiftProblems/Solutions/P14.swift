//
//  P14.swift
//  NinetyNineSwiftProblems
//
//  Created by Uday Pandey on 03/05/2019.
//  Copyright © 2019 Uday Pandey. All rights reserved.
//

import Foundation

extension Node {
    func duplicate() -> Node {
        var root = self

        let secondNode = Node(value: root.value)
        let rootNode = Node(value: root.value, next: secondNode)
        var currentNode = secondNode

        while let nextNode = root.next {
            let sNode = Node(value: nextNode.value)
            let fNode = Node(value: nextNode.value, next: sNode)
            currentNode.next = fNode
            currentNode = sNode

            root = nextNode
        }

        return rootNode
    }
}

extension Array {
    func duplicate() -> [Element] {
        var rootList = [Element]()
        guard !isEmpty else { return rootList }

        for elm in self {
            rootList.append(elm)
            rootList.append(elm)
        }

        return rootList
    }
}
