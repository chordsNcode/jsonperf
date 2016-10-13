//
//  JSONCodableImplementation.swift
//  JsonPerf
//
//  Created by Matt Dias on 10/12/16.
//  Copyright © 2016 Zipcar. All rights reserved.
//

import Foundation
import JSONCodable


extension Repo: JSONCodable {

    init(object: JSONObject) throws {
        let decoder = JSONDecoder(object: object)

        self.id = try decoder.decode("id")
        self.name = try decoder.decode("name")
        self.fullName = try decoder.decode("full_name")
        self.isPrivate = try decoder.decode("private")
        self.htmlUrl = try decoder.decode("html_url")
        self.description = try decoder.decode("description")
        self.isForked = try decoder.decode("fork")
        self.url = try decoder.decode("url")
        self.forksUrl = try decoder.decode("forks_url")
        self.keysUrl = try decoder.decode("keys_url")
        self.collaboratorsUrl = try decoder.decode("collaborators_url")
        self.teamsUrl = try decoder.decode("teams_url")
        self.hooksUrl = try decoder.decode("hooks_url")
        self.issueEventsUrl = try decoder.decode("issue_events_url")
        self.eventsUrl = try decoder.decode("events_url")
        self.assigneesUrl = try decoder.decode("assignees_url")
        self.branchesUrl = try decoder.decode("branches_url")
        self.tagsUrl = try decoder.decode("tags_url")
        self.blobsUrl = try decoder.decode("blobs_url")
        self.gitTagsUrls = try decoder.decode("git_tags_url")
        self.gitRefsUrl = try decoder.decode("git_refs_url")
        self.treesUrl = try decoder.decode("trees_url")
        self.statusesUrl = try decoder.decode("statuses_url")
        self.languagesUrl = try decoder.decode("languages_url")
        self.stargazersUrl = try decoder.decode("stargazers_url")
        self.contributorsUrl = try decoder.decode("contributors_url")
        self.subscribersUrl = try decoder.decode("subscribers_url")
        self.subscriptionUrl = try decoder.decode("subscription_url")
        self.commitsUrl = try decoder.decode("commits_url")
        self.gitCommitsUrl = try decoder.decode("git_commits_url")
        self.commentsUrl = try decoder.decode("comments_url")
        self.issueCommentUrl = try decoder.decode("issue_comment_url")
        self.contentsUrl = try decoder.decode("contents_url")
        self.compareUrl = try decoder.decode("compare_url")
        self.mergesUrl = try decoder.decode("merges_url")
        self.archiveUrl = try decoder.decode("archive_url")
        self.issuesUrl = try decoder.decode("issues_url")
        self.pullsUrl = try decoder.decode("pulls_url")
        self.downloadsUrl = try decoder.decode("downloads_url")
        self.milestonesUrl = try decoder.decode("milestones_url")
        self.notificationsUrl = try decoder.decode("notifications_url")
        self.labelsUrl = try decoder.decode("labels_url")
        self.releasesUrl = try decoder.decode("releases_url")
        self.deploymentsUrl = try decoder.decode("deployments_url")
        self.createdAt = try decoder.decode("created_at")
        self.updatedAt = try decoder.decode("updated_at")
        self.pushedAt = try decoder.decode("pushed_at")
        self.gitUrl = try decoder.decode("git_url")
        self.sshUrl = try decoder.decode("ssh_url")
        self.cloneUrl = try decoder.decode("clone_url")
        self.svnUrl = try decoder.decode("svn_url")
        self.size = try decoder.decode("size")
        self.stargazersCount = try decoder.decode("stargazers_count")
        self.watchersCount = try decoder.decode("watchers_count")
        self.language = try decoder.decode("language")
        self.hasIssues = try decoder.decode("has_issues")
        self.hasPages = try decoder.decode("has_pages")
        self.forksCount = try decoder.decode("forks_count")
        self.openIssues = try decoder.decode("open_issues")
        self.watchers = try decoder.decode("watchers")
        self.defaultBranch = try decoder.decode("default_branch")
        self.score = try decoder.decode("score")

        self.owner = try decoder.decode("owner")

        self.homepage = try decoder.decode("homepage")
        self.mirrorUrl = try decoder.decode("mirror_url")
    }
}


extension Owner: JSONCodable {

    init(object: JSONObject) throws {
        let decoder = JSONDecoder(object: object)

        self.id = try decoder.decode("id")
        self.login = try decoder.decode("login")
        self.avatarUrl = try decoder.decode("avatar_url")
        self.url = try decoder.decode("url")
        self.htmlUrl = try decoder.decode("html_url")
        self.followersUrl = try decoder.decode("followers_url")
        self.followingUrl = try decoder.decode("following_url")
        self.gistsUrl = try decoder.decode("gists_url")
        self.starredUrl = try decoder.decode("starred_url")
        self.subscriptionsUrl = try decoder.decode("subscriptions_url")
        self.organizationsUrl = try decoder.decode("organizations_url")
        self.reposUrl = try decoder.decode("repos_url")
        self.eventsUrl = try decoder.decode("events_url")
        self.receivedEventsUrls = try decoder.decode("received_events_url")
        self.type = try decoder.decode("type")
        self.siteAdmin = try decoder.decode("site_admin")

        self.gravatarId = try decoder.decode("gravatar_id")
    }
}

