//
//  GenomePerfTests.swift
//  JsonPerf
//
//  Created by Matt Dias on 10/8/16.
//  Copyright © 2016 Zipcar. All rights reserved.
//

import XCTest
import Genome

@testable import JsonPerf

class GenomePerfTests: XCTestCase {

    func testGenomePerformance() {

        self.measure {
            do {
                let jsonData = try self.data?.makeNode()
                let nodes = jsonData?["items"]?.nodeArray

                try nodes?.forEach({ (node) in
                    let _ = try Repo(node: node)
                })

            } catch {
                XCTFail("couldn't make the object")
            }
        }
    }
    
}
