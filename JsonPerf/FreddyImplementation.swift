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
		self.id = try value.getInt(at: "id")
        self.name = try value.getString(at: "name")
        self.fullName = try value.getString(at: "full_name")

        let ownerJson = try JSON(value.getDictionary(at: "owner"))
        self.owner = try Owner(json: ownerJson)

        self.isPrivate = try value.getBool(at: "private")
        self.score = try value.getInt(at: "score")
	}
}

extension Owner: JSONDecodable {
    public init(json value: JSON) throws {
        self.login = try value.getString(at: "login")
        self.id = try value.getInt(at: "id")
        self.avatarUrl = try value.getString(at: "avatar_url")
        self.url = try value.getString(at: "url")
        self.htmlUrl = try value.getString(at: "html_url")
        self.followersUrl = try value.getString(at: "followers_url")
        self.followingUrl = try value.getString(at: "following_url")
        self.gistsUrl = try value.getString(at: "gists_url")
        self.starredUrl = try value.getString(at: "starred_url")
        self.subscriptionsUrl = try value.getString(at: "subscriptions_url")
        self.organizationsUrl = try value.getString(at: "organizations_url")
        self.reposUrl = try value.getString(at: "repos_url")
        self.eventsUrl = try value.getString(at: "events_url")
        self.receivedEventsUrls = try value.getString(at: "received_events_url")
        self.type = try value.getString(at: "type")
        self.siteAdmin = try value.getBool(at: "site_admin")
    }
}
