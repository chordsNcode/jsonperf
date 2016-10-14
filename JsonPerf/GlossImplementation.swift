//
//  GlossImplementation.swift
//  JsonPerf
//
//  Created by Matt Dias on 10/9/16.
//

import Foundation
import Gloss


/// Parsing a Github repo object using Gloss parser (https://github.com/hkellaway/Gloss)
extension Repo: Decodable {
    init?(json: JSON) {
        guard let id: Int = "id" <~~ json,
        let name: String = "name" <~~ json,
        let fullName: String = "full_name" <~~ json,
        let isPrivate: Bool = "private" <~~ json,
        let htmlUrl: String = "html_url" <~~ json,
        let description: String = "description" <~~ json,
        let isForked: Bool = "fork" <~~ json,
        let url: String = "url" <~~ json,
        let forksUrl: String = "forks_url" <~~ json,
        let keysUrl: String = "keys_url" <~~ json,
        let collaboratorsUrl: String = "collaborators_url" <~~ json,
        let teamsUrl: String = "teams_url" <~~ json,
        let hooksUrl: String = "hooks_url" <~~ json,
        let issueEventsUrl: String = "issue_events_url" <~~ json,
        let eventsUrl: String = "events_url" <~~ json,
        let assigneesUrl: String = "assignees_url" <~~ json,
        let branchesUrl: String = "branches_url" <~~ json,
        let tagsUrl: String = "tags_url" <~~ json,
        let blobsUrl: String = "blobs_url" <~~ json,
        let gitTagsUrls: String = "git_tags_url" <~~ json,
        let gitRefsUrl: String = "git_refs_url" <~~ json,
        let treesUrl: String = "trees_url" <~~ json,
        let statusesUrl: String = "statuses_url" <~~ json,
        let languagesUrl: String = "languages_url" <~~ json,
        let stargazersUrl: String = "stargazers_url" <~~ json,
        let contributorsUrl: String = "contributors_url" <~~ json,
        let subscribersUrl: String = "subscribers_url" <~~ json,
        let subscriptionUrl: String = "subscription_url" <~~ json,
        let commitsUrl: String = "commits_url" <~~ json,
        let gitCommitsUrl: String = "git_commits_url" <~~ json,
        let commentsUrl: String = "comments_url" <~~ json,
        let issueCommentUrl: String = "issue_comment_url" <~~ json,
        let contentsUrl: String = "contents_url" <~~ json,
        let compareUrl: String = "compare_url" <~~ json,
        let mergesUrl: String = "merges_url" <~~ json,
        let archiveUrl: String = "archive_url" <~~ json,
        let downloadsUrl: String = "downloads_url" <~~ json,
        let issuesUrl: String = "issues_url" <~~ json,
        let pullsUrl: String = "pulls_url" <~~ json,
        let milestonesUrl: String = "milestones_url" <~~ json,
        let notificationsUrl: String = "notifications_url" <~~ json,
        let labelsUrl: String = "labels_url" <~~ json,
        let releasesUrl: String = "releases_url" <~~ json,
        let deploymentsUrl: String = "deployments_url" <~~ json,
        let createdAt: String = "created_at" <~~ json,
        let updatedAt: String = "updated_at" <~~ json,
        let pushedAt: String = "pushed_at" <~~ json,
        let gitUrl: String = "git_url" <~~ json,
        let sshUrl: String = "ssh_url" <~~ json,
        let cloneUrl: String = "clone_url" <~~ json,
        let svnUrl: String = "svn_url" <~~ json,
        let size: Int = "size" <~~ json,
        let stargazersCount: Int = "stargazers_count" <~~ json,
        let watchersCount: Int = "watchers_count" <~~ json,
        let language: String = "language" <~~ json,
        let hasIssues: Bool = "has_issues" <~~ json,
        let hasPages: Bool = "has_pages" <~~ json,
        let forksCount: Int = "forks_count" <~~ json,
        let openIssues: Int = "open_issues" <~~ json,
        let watchers: Int = "watchers" <~~ json,
        let defaultBranch: String = "default_branch" <~~ json,
        let score: Int = "score" <~~ json else {
            return nil
        }

        self.id = id
        self.name = name
        self.fullName = fullName
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

        guard let owner: Owner = "owner" <~~ json else {
            return nil
        }
        self.owner = owner

        self.homepage = "homepage" <~~ json
        self.mirrorUrl = "mirror_url" <~~ json
    }
}


extension Owner: Decodable {
    init?(json: JSON) {
        guard let login: String = "login" <~~ json,
        let id: Int = "id" <~~ json,
        let avatarUrl: String = "avatar_url" <~~ json,
        let url: String = "url" <~~ json,
        let htmlUrl: String = "html_url" <~~ json,
        let followersUrl: String = "followers_url" <~~ json,
        let followingUrl: String = "following_url" <~~ json,
        let gistsUrl: String = "gists_url" <~~ json,
        let starredUrl: String = "starred_url" <~~ json,
        let subscriptionsUrl: String = "subscriptions_url" <~~ json,
        let organizationsUrl: String = "organizations_url" <~~ json,
        let reposUrl: String = "repos_url" <~~ json,
        let eventsUrl: String = "events_url" <~~ json,
        let receivedEventsUrls: String = "received_events_url" <~~ json,
        let type: String = "type" <~~ json,
        let siteAdmin: Bool = "site_admin" <~~ json else {
                return nil
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

        self.gravatarId = "gravatar_id" <~~ json
    }
}
