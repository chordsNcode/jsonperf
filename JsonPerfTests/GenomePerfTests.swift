//
//  GenomePerfTests.swift
//  JsonPerf
//
//  Created by Matt Dias on 10/8/16.
//

import XCTest
import Genome

@testable import JsonPerf

class GenomePerfTests: XCTestCase {

    func testGenomePerformance() {

        self.measure {
            do {
                let jsonData = try self.data?.makeNode()
                if let nodes = jsonData?["items"]?.nodeArray {
                    let result = nodes.flatMap { try? Repo(node: $0) }
                    XCTAssertTrue(result.count == 30)
                } else {
                    XCTFail()
                }
            } catch {
                XCTFail("couldn't make the object")
            }
        }
    }
}
