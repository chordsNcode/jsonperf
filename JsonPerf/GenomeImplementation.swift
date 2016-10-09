//
//  GenomeImplementation.swift
//  JsonPerf
//
//  Created by Matt Dias on 10/8/16.
//  Copyright © 2016 Zipcar. All rights reserved.
//

import Foundation
import Genome


extension Repo: MappableObject {
    init(map: Map) throws {
        self.id = try map.extract("id")
        self.name = try map.extract("name")
        self.fullName = try map.extract("full_name")

        self.owner = try Owner(map: map.extract("owner"))

        self.isPrivate = try map.extract("private")
        self.htmlUrl = try map.extract("html_url")
        self.description = try map.extract("description")
        self.isForked = try map.extract("fork")
        self.url = try map.extract("url")
        self.forksUrl = try map.extract("forks_url")
        self.keysUrl = try map.extract("keys_url")
        self.collaboratorsUrl = try map.extract("collaborators_url")
        self.teamsUrl = try map.extract("teams_url")
        self.hooksUrl = try map.extract("hooks_url")
        self.issueEventsUrl = try map.extract("issue_events_url")
        self.eventsUrl = try map.extract("events_url")
        self.assigneesUrl = try map.extract("assignees_url")
        self.branchesUrl = try map.extract("branches_url")
        self.tagsUrl = try map.extract("tags_url")
        self.blobsUrl = try map.extract("blobs_url")
        self.gitTagsUrls = try map.extract("git_tags_url")
        self.gitRefsUrl = try map.extract("git_refs_url")
        self.treesUrl = try map.extract("trees_url")
        self.statusesUrl = try map.extract("statuses_url")
        self.languagesUrl = try map.extract("languages_url")
        self.stargazersUrl = try map.extract("stargazers_url")
        self.contributorsUrl = try map.extract("contributors_url")
        self.subscribersUrl = try map.extract("subscribers_url")
        self.subscriptionUrl = try map.extract("subscription_url")
        self.commitsUrl = try map.extract("commits_url")
        self.gitCommitsUrl = try map.extract("git_commits_url")
        self.commentsUrl = try map.extract("comments_url")
        self.issueCommentUrl = try map.extract("issue_comment_url")
        self.contentsUrl = try map.extract("contents_url")
        self.compareUrl = try map.extract("compare_url")
        self.mergesUrl = try map.extract("merges_url")
        self.archiveUrl = try map.extract("archive_url")
        self.downloadsUrl = try map.extract("downloads_url")
        self.issuesUrl = try map.extract("issues_url")
        self.pullsUrl = try map.extract("pulls_url")
        self.milestonesUrl = try map.extract("milestones_url")
        self.notificationsUrl = try map.extract("notifications_url")
        self.labelsUrl = try map.extract("labels_url")
        self.releasesUrl = try map.extract("releases_url")
        self.deploymentsUrl = try map.extract("deployments_url")
        self.createdAt = try map.extract("created_at")
        self.updatedAt = try map.extract("updated_at")
        self.pushedAt = try map.extract("pushed_at")
        self.gitUrl = try map.extract("git_url")
        self.sshUrl = try map.extract("ssh_url")
        self.cloneUrl = try map.extract("clone_url")
        self.svnUrl = try map.extract("svn_url")
        self.size = try map.extract("size")
        self.stargazersCount = try map.extract("stargazers_count")
        self.watchersCount = try map.extract("watchers_count")
        self.language = try map.extract("language")
        self.hasIssues = try map.extract("has_issues")
        self.hasPages = try map.extract("has_pages")
        self.forksCount = try map.extract("forks_count")
        self.openIssues = try map.extract("open_issues")
        self.watchers = try map.extract("watchers")
        self.defaultBranch = try map.extract("default_branch")
        self.score = try map.extract("score")
    }

    func sequence(_ map: Map) throws {
        try id ~> map["id"]
        try name ~> map["name"]
        try fullName ~> map["full_name"]

        try owner ~> map["owner"]

        try isPrivate ~> map["private"]
        try htmlUrl ~> map["html_url"]
        try description ~> map["description"]
        try isForked ~> map["fork"]
        try url ~> map["url"]
        try forksUrl ~> map["forks_url"]
        try keysUrl ~> map["keys_url"]
        try collaboratorsUrl ~> map["collaborators_url"]
        try teamsUrl ~> map["teams_url"]
        try hooksUrl ~> map["hooks_url"]
        try issueEventsUrl ~> map["issue_events_url"]
        try eventsUrl ~> map["events_url"]
        try assigneesUrl ~> map["assignees_url"]
        try branchesUrl ~> map["branches_url"]
        try tagsUrl ~> map["tags_url"]
        try blobsUrl ~> map["blobs_url"]
        try gitTagsUrls ~> map["git_tags_url"]
        try gitRefsUrl ~> map["git_refs_url"]
        try treesUrl ~> map["trees_url"]
        try statusesUrl ~> map["statuses_url"]
        try languagesUrl ~> map["languages_url"]
        try stargazersUrl ~> map["stargazers_url"]
        try contributorsUrl ~> map["contributors_url"]
        try subscribersUrl ~> map["subscribers_url"]
        try subscriptionUrl ~> map["subscription_url"]
        try commitsUrl ~> map["commits_url"]
        try gitCommitsUrl ~> map["git_commits_url"]
        try commentsUrl ~> map["comments_url"]
        try issueCommentUrl ~> map["issue_comment_url"]
        try contentsUrl ~> map["contents_url"]
        try compareUrl ~> map["compare_url"]
        try mergesUrl ~> map["merges_url"]
        try archiveUrl ~> map["archive_url"]
        try downloadsUrl ~> map["downloads_url"]
        try issuesUrl ~> map["issues_url"]
        try pullsUrl ~> map["pulls_url"]
        try milestonesUrl ~> map["milestones_url"]
        try notificationsUrl ~> map["notifications_url"]
        try labelsUrl ~> map["labels_url"]
        try releasesUrl ~> map["releases_url"]
        try deploymentsUrl ~> map["deployments_url"]
        try createdAt ~> map["created_at"]
        try updatedAt ~> map["updated_at"]
        try pushedAt ~> map["pushed_at"]
        try gitUrl ~> map["git_url"]
        try sshUrl ~> map["ssh_url"]
        try cloneUrl ~> map["clone_url"]
        try svnUrl ~> map["svn_url"]
        try size ~> map["size"]
        try stargazersCount ~> map["stargazers_count"]
        try watchersCount ~> map["watchers_count"]
        try language ~> map["language"]
        try hasIssues ~> map["has_issues"]
        try hasPages ~> map["has_pages"]
        try forksCount ~> map["forks_count"]
        try openIssues ~> map["open_issues"]
        try watchers ~> map["watchers"]
        try defaultBranch ~> map["default_branch"]
        try score ~> map["score"]
    }
}

extension Owner: MappableObject {

    init(map: Map) throws {
        self.login = try map.extract("login")
        self.id = try map.extract("id")
        self.avatarUrl = try map.extract("avatar_url")
        self.url = try map.extract("url")
        self.htmlUrl = try map.extract("html_url")
        self.followersUrl = try map.extract("followers_url")
        self.followingUrl = try map.extract("following_url")
        self.gistsUrl = try map.extract("gists_url")
        self.starredUrl = try map.extract("starred_url")
        self.subscriptionsUrl = try map.extract("subscriptions_url")
        self.organizationsUrl = try map.extract("organizations_url")
        self.reposUrl = try map.extract("repos_url")
        self.eventsUrl = try map.extract("events_url")
        self.receivedEventsUrls = try map.extract("received_events_url")
        self.type = try map.extract("type")
        self.siteAdmin = try map.extract("site_admin")
    }
}
