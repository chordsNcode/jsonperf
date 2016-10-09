//
//  NormalPerfTest.swift
//  JsonPerf
//
//  Created by Matt Dias on 9/27/16.
//

import XCTest

@testable import JsonPerf

class NormalPerfTest: XCTestCase {
    
    func testNormalPerformance() {
        self.measure {
            do {
                guard let json = try JSONSerialization.jsonObject(with: self.data!) as? MyJSON,
                    let items = json["items"] as? [MyJSON] else {
                        XCTFail("bad JSON")
                        return
                }

                _ = try items.map{
                    try Repo(myJson: $0)
                }
            } catch {
                XCTFail("bad json")
            }
        }
    }
}
