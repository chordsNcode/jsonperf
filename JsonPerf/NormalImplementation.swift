//
//  NormalImplementation.swift
//  JsonPerf
//
//  Created by Matt Dias on 9/25/16.
//  Copyright © 2016 Zipcar. All rights reserved.
//

import Foundation

extension Repo {
    init(json: MyJSON) throws {

        guard !json.isEmpty else {
            throw SerializationError.invalid
        }

        guard let id = json["id"] as? Int,
            let name = json["name"] as? String,
            let fullName = json["full_name"] as? String else {
                throw SerializationError.missing
        }

        guard let ownerJson = json["owner"] as? MyJSON,
            let owner = try? Owner(json: ownerJson) else {
            throw SerializationError.missing
        }

        guard let isPrivate = json["private"] as? Bool,
            let score = json["score"] as? Int else {
            throw SerializationError.missing
        }

        self.id = id
        self.name = name
        self.fullName = fullName

        self.owner = owner

        self.isPrivate = isPrivate
        self.score = score
    }

}

extension Owner {
    init(json: MyJSON) throws {

        guard !json.isEmpty else {
            throw SerializationError.invalid
        }

        guard let login = json["login"] as? String,
            let id = json["id"] as? Int,
            let avatarUrl = json["avatar_url"] as? String,
            let url = json["url"] as? String,
            let htmlUrl = json["html_url"] as? String,
            let followersUrl = json["followers_url"] as? String,
            let followingUrl = json["following_url"] as? String,
            let gistsUrl = json["gists_url"] as? String,
            let starredUrl = json["starred_url"] as? String,
            let subscriptionsUrl = json["subscriptions_url"] as? String,
            let organizationsUrl = json["organizations_url"] as? String,
            let reposUrl = json["repos_url"] as? String,
            let eventsUrl = json["events_url"] as? String,
            let receivedEventsUrls = json["received_events_url"] as? String,
            let type = json["type"] as? String,
            let siteAdmin = json["site_admin"] as? Bool else {
                throw SerializationError.missing
        }

        self.login = login
        self.id = id
        self.avatarUrl = avatarUrl
        self.url = url
        self.htmlUrl = htmlUrl
        self.followersUrl = followersUrl
        self.followingUrl = followingUrl
        self.gistsUrl = gistsUrl
        self.starredUrl = starredUrl
        self.subscriptionsUrl = subscriptionsUrl
        self.organizationsUrl = organizationsUrl
        self.reposUrl = reposUrl
        self.eventsUrl = eventsUrl
        self.receivedEventsUrls = receivedEventsUrls
        self.type = type
        self.siteAdmin = siteAdmin
    }
}
