//
//  File.swift
//  JsonPerf
//
//  Created by Matt Dias on 9/21/16.
//  Copyright © 2016 Zipcar. All rights reserved.
//

import Foundation
import Freddy


extension Repo: JSONDecodable {

	public init(json value: JSON) throws {
		id = try value.getInt(at: "id")
	}
}


