//
//  XCTestExtension.swift
//  JsonPerf
//
//  Created by Matt Dias on 9/27/16.
//  Copyright © 2016 Zipcar. All rights reserved.
//

import XCTest
import Foundation

@testable import JsonPerf

extension XCTestCase {

    var data: Data? {
        let path = Bundle.main.path(forResource: "response", ofType: "json")
        return try? NSData(contentsOfFile: path!) as Data
    }
}
