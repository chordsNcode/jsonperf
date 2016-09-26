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
            let htmlUrl = json["html_url"] as? String,
            let description = json["description"] as? String,
            let isForked = json["fork"] as? Bool,
            let url = json["url"] as? String,
            let forksUrl = json["forks_url"] as? String,
            let keysUrl = json["keys_url"] as? String,
            let collaboratorsUrl = json["collaborators_url"] as? String,
            let teamsUrl = json["teams_url"] as? String,
            let hooksUrl = json["hooks_url"] as? String,
            let issueEventsUrl = json["issue_events_url"] as? String,
            let eventsUrl = json["events_url"] as? String,
            let assigneesUrl = json["assignees_url"] as? String,
            let branchesUrl = json["branches_url"] as? String,
            let tagsUrl = json["tags_url"] as? String,
            let blobsUrl = json["blobs_url"] as? String,
            let gitTagsUrls = json["git_tags_url"] as? String,
            let gitRefsUrl = json["git_refs_url"] as? String,
            let treesUrl = json["trees_url"] as? String,
            let statusesUrl = json["statuses_url"] as? String,
            let languagesUrl = json["languages_url"] as? String,
            let stargazersUrl = json["stargazers_url"] as? String,
            let contributorsUrl = json["contributors_url"] as? String,
            let subscribersUrl = json["subscribers_url"] as? String,
            let subscriptionUrl = json["subscription_url"] as? String,
            let commitsUrl = json["commits_url"] as? String,
            let gitCommitsUrl = json["git_commits_url"] as? String,
            let commentsUrl = json["comments_url"]as? String,
            let issueCommentUrl = json["issue_comment_url"] as? String,
            let contentsUrl = json["contents_url"] as? String,
            let compareUrl = json["compare_url"] as? String,
            let mergesUrl = json["merges_url"] as? String,
            let archiveUrl = json["archive_url"] as? String,
            let issuesUrl = json["issues_url"] as? String,
            let pullsUrl = json["pulls_url"] as? String,
            let downloadsUrl = json["downloads_url"] as? String,
            let milestonesUrl = json["milestones_url"] as? String,
            let notificationsUrl = json["notifications_url"] as? String,
            let labelsUrl = json["labels_url"] as? String,
            let releasesUrl = json["releases_url"] as? String,
            let deploymentsUrl = json["deployments_url"] as? String,
            let createdAt = json["created_at"] as? String,
            let updatedAt = json["updated_at"] as? String,
            let pushedAt = json["pushed_at"] as? String,
            let gitUrl = json["git_url"] as? String,
            let sshUrl = json["ssh_url"] as? String,
            let cloneUrl = json["clone_url"] as? String,
            let svnUrl = json["svn_url"] as? String,
            let size = json["size"] as? Int,
            let stargazersCount = json["stargazers_count"] as? Int,
            let watchersCount = json["watchers_count"] as? Int,
            let language = json["language"] as? String,
            let hasIssues = json["has_issues"] as? Bool,
            let hasPages = json["has_pages"] as? Bool,
            let forksCount = json["forks_count"] as? Int,
            let openIssues = json["open_issues"] as? Int,
            let watchers = json["watchers"] as? Int,
            let defaultBranch = json["default_branch"] as? String,
            let score = json["score"] as? Int else {
            throw SerializationError.missing
        }

        self.id = id
        self.name = name
        self.fullName = fullName

        self.owner = owner

        self.isPrivate = isPrivate
        self.htmlUrl = htmlUrl
        self.description = description
        self.isForked = isForked
        self.url = url
        self.forksUrl = forksUrl
        self.keysUrl = keysUrl
        self.collaboratorsUrl = collaboratorsUrl
        self.teamsUrl = teamsUrl
        self.hooksUrl = hooksUrl
        self.issueEventsUrl = issueEventsUrl
        self.eventsUrl = eventsUrl
        self.assigneesUrl = assigneesUrl
        self.branchesUrl = branchesUrl
        self.tagsUrl = tagsUrl
        self.blobsUrl = blobsUrl
        self.gitTagsUrls = gitTagsUrls
        self.gitRefsUrl = gitRefsUrl
        self.treesUrl = treesUrl
        self.statusesUrl = statusesUrl
        self.languagesUrl = languagesUrl
        self.stargazersUrl = stargazersUrl
        self.contributorsUrl = contributorsUrl
        self.subscribersUrl = subscribersUrl
        self.subscriptionUrl = subscriptionUrl
        self.commitsUrl = commitsUrl
        self.gitCommitsUrl = gitCommitsUrl
        self.commentsUrl = commentsUrl
        self.issueCommentUrl = issueCommentUrl
        self.contentsUrl = contentsUrl
        self.compareUrl = compareUrl
        self.mergesUrl = mergesUrl
        self.archiveUrl = archiveUrl
        self.downloadsUrl = downloadsUrl
        self.issuesUrl = issuesUrl
        self.pullsUrl = pullsUrl
        self.milestonesUrl = milestonesUrl
        self.notificationsUrl = notificationsUrl
        self.labelsUrl = labelsUrl
        self.releasesUrl = releasesUrl
        self.deploymentsUrl = deploymentsUrl
        self.createdAt = createdAt
        self.updatedAt = updatedAt
        self.pushedAt = pushedAt
        self.gitUrl = gitUrl
        self.sshUrl = sshUrl
        self.cloneUrl = cloneUrl
        self.svnUrl = svnUrl
        self.size = size
        self.stargazersCount = stargazersCount
        self.watchersCount = watchersCount
        self.language = language
        self.hasIssues = hasIssues
        self.hasPages = hasPages
        self.forksCount = forksCount
        self.openIssues = openIssues
        self.watchers = watchers
        self.defaultBranch = defaultBranch
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
