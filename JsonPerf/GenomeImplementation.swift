//
//  GenomeImplementation.swift
//  JsonPerf
//
//  Created by Matt Dias on 10/8/16.
//

import Foundation
import Genome


/// Parsing a Github repo object using Genome parser (https://github.com/LoganWright/Genome)
extension Repo: MappableObject {
    init(map: Map) throws {
        self.id = try map.extract("id")
        self.name = try map.extract("name")
        self.fullName = try map.extract("full_name")
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

        self.owner = try Owner(map: map.extract("owner"))

        self.homepage = try map.extract("homepage")
        self.mirrorUrl = try map.extract("mirror_url")
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

        self.gravatarId = try map.extract("gravatar_id")
    }
}
