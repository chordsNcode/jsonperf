//
//  File.swift
//  JsonPerf
//
//  Created by Matt Dias on 9/21/16.
//

import Foundation
import Freddy


/// Parsing a Github repo object using Freddy (https://github.com/bignerdranch/Freddy)
extension Repo: JSONDecodable {

	public init(json value: JSON) throws {
		self.id = try value.getInt(at: "id")
        self.name = try value.getString(at: "name")
        self.fullName = try value.getString(at: "full_name")
        self.isPrivate = try value.getBool(at: "private")
        self.htmlUrl = try value.getString(at: "html_url")
        self.description = try value.getString(at: "description")
        self.isForked = try value.getBool(at: "fork")
        self.url = try value.getString(at: "url")
        self.forksUrl = try value.getString(at: "forks_url")
        self.keysUrl = try value.getString(at: "keys_url")
        self.collaboratorsUrl = try value.getString(at: "collaborators_url")
        self.teamsUrl = try value.getString(at: "teams_url")
        self.hooksUrl = try value.getString(at: "hooks_url")
        self.issueEventsUrl = try value.getString(at: "issue_events_url")
        self.eventsUrl = try value.getString(at: "events_url")
        self.assigneesUrl = try value.getString(at: "assignees_url")
        self.branchesUrl = try value.getString(at: "branches_url")
        self.tagsUrl = try value.getString(at: "tags_url")
        self.blobsUrl = try value.getString(at: "blobs_url")
        self.gitTagsUrls = try value.getString(at: "git_tags_url")
        self.gitRefsUrl = try value.getString(at: "git_refs_url")
        self.treesUrl = try value.getString(at: "trees_url")
        self.statusesUrl = try value.getString(at: "statuses_url")
        self.languagesUrl = try value.decode(at: "languages_url")
        self.stargazersUrl = try value.getString(at: "stargazers_url")
        self.contributorsUrl = try value.getString(at: "contributors_url")
        self.subscribersUrl = try value.getString(at: "subscribers_url")
        self.subscriptionUrl = try value.getString(at: "subscription_url")
        self.commitsUrl = try value.getString(at: "commits_url")
        self.gitCommitsUrl = try value.getString(at: "git_commits_url")
        self.commentsUrl = try value.getString(at: "comments_url")
        self.issueCommentUrl = try value.getString(at: "issue_comment_url")
        self.contentsUrl = try value.getString(at: "contents_url")
        self.compareUrl = try value.getString(at: "compare_url")
        self.mergesUrl = try value.getString(at: "merges_url")
        self.archiveUrl = try value.getString(at: "archive_url")
        self.downloadsUrl = try value.getString(at: "downloads_url")
        self.issuesUrl = try value.getString(at: "issues_url")
        self.pullsUrl = try value.getString(at: "pulls_url")
        self.milestonesUrl = try value.getString(at: "milestones_url")
        self.notificationsUrl = try value.getString(at: "notifications_url")
        self.labelsUrl = try value.getString(at: "labels_url")
        self.releasesUrl = try value.getString(at: "releases_url")
        self.deploymentsUrl = try value.getString(at: "deployments_url")
        self.createdAt = try value.getString(at: "created_at")
        self.updatedAt = try value.getString(at: "updated_at")
        self.pushedAt = try value.getString(at: "pushed_at")
        self.gitUrl = try value.getString(at: "git_url")
        self.sshUrl = try value.getString(at: "ssh_url")
        self.cloneUrl = try value.getString(at: "clone_url")
        self.svnUrl = try value.getString(at: "svn_url")
        self.size = try value.getInt(at: "size")
        self.stargazersCount = try value.getInt(at: "stargazers_count")
        self.watchersCount = try value.getInt(at: "watchers_count")
        self.language = try value.getString(at: "language")
        self.hasIssues = try value.getBool(at: "has_issues")
        self.hasPages = try value.getBool(at: "has_pages")
        self.forksCount = try value.getInt(at: "forks_count")
        self.openIssues = try value.getInt(at: "open_issues")
        self.watchers = try value.getInt(at: "watchers")
        self.defaultBranch = try value.getString(at: "default_branch")
        self.score = try value.getInt(at: "score")

        let ownerJson = try JSON(value.getDictionary(at: "owner"))
        self.owner = try Owner(json: ownerJson)

        self.mirrorUrl = try value.getString(at: "mirror_url", alongPath: .NullBecomesNil)
        self.homepage = try value.getString(at: "homepage", alongPath: .NullBecomesNil)
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

        self.gravatarId = try value.getString(at: "gravatar_id", alongPath: .NullBecomesNil)
    }
}
