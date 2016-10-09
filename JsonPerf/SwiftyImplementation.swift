//
//  SwiftyImplementation.swift
//  JsonPerf
//
//  Created by Matt Dias on 9/27/16.
//

import Foundation
import SwiftyJSON


/// Parsing a Github repo object using SwiftyJSON (https://github.com/SwiftyJSON/SwiftyJSON)
extension Repo {

    public init(swifty json: JSON) {
        self.id = json["id"].intValue
        self.name = json["name"].stringValue
        self.fullName = json["full_name"].stringValue
        self.isPrivate = json["private"].boolValue
        self.htmlUrl = json["html_url"].stringValue
        self.description = json["description"].stringValue
        self.isForked = json["fork"].boolValue
        self.url = json["url"].stringValue
        self.forksUrl = json["forks_url"].stringValue
        self.keysUrl = json["keys_url"].stringValue
        self.collaboratorsUrl = json["collaborators_url"].stringValue
        self.teamsUrl = json["teams_url"].stringValue
        self.hooksUrl = json["hooks_url"].stringValue
        self.issueEventsUrl = json["issue_events_url"].stringValue
        self.eventsUrl = json["events_url"].stringValue
        self.assigneesUrl = json["assignees_url"].stringValue
        self.branchesUrl = json["branches_url"].stringValue
        self.tagsUrl = json["tags_url"].stringValue
        self.blobsUrl = json["blobs_url"].stringValue
        self.gitTagsUrls = json["git_tags_url"].stringValue
        self.gitRefsUrl = json["git_refs_url"].stringValue
        self.treesUrl = json["trees_url"].stringValue
        self.statusesUrl = json["statuses_url"].stringValue
        self.languagesUrl = json["languages_url"].stringValue
        self.stargazersUrl = json["stargazers_url"].stringValue
        self.contributorsUrl = json["contributors_url"].stringValue
        self.subscribersUrl = json["subscribers_url"].stringValue
        self.subscriptionUrl = json["subscription_url"].stringValue
        self.commitsUrl = json["commits_url"].stringValue
        self.gitCommitsUrl = json["git_commits_url"].stringValue
        self.commentsUrl = json["comments_url"].stringValue
        self.issueCommentUrl = json["issue_comment_url"].stringValue
        self.contentsUrl = json["contents_url"].stringValue
        self.compareUrl = json["compare_url"].stringValue
        self.mergesUrl = json["merges_url"].stringValue
        self.archiveUrl = json["archive_url"].stringValue
        self.issuesUrl = json["issues_url"].stringValue
        self.pullsUrl = json["pulls_url"].stringValue
        self.downloadsUrl = json["downloads_url"].stringValue
        self.milestonesUrl = json["milestones_url"].stringValue
        self.notificationsUrl = json["notifications_url"].stringValue
        self.labelsUrl = json["labels_url"].stringValue
        self.releasesUrl = json["releases_url"].stringValue
        self.deploymentsUrl = json["deployments_url"].stringValue
        self.createdAt = json["created_at"].stringValue
        self.updatedAt = json["updated_at"].stringValue
        self.pushedAt = json["pushed_at"].stringValue
        self.gitUrl = json["git_url"].stringValue
        self.sshUrl = json["ssh_url"].stringValue
        self.cloneUrl = json["clone_url"].stringValue
        self.svnUrl = json["svn_url"].stringValue
        self.size = json["size"].intValue
        self.stargazersCount = json["stargazers_count"].intValue
        self.watchersCount = json["watchers_count"].intValue
        self.language = json["language"].stringValue
        self.hasIssues = json["has_issues"].boolValue
        self.hasPages = json["has_pages"].boolValue
        self.forksCount = json["forks_count"].intValue
        self.openIssues = json["open_issues"].intValue
        self.watchers = json["watchers"].intValue
        self.defaultBranch = json["default_branch"].stringValue
        self.score = json["score"].intValue

        self.owner = Owner(swifty: json["owner"])

        self.homepage = json["homepage"].stringValue
        self.mirrorUrl = json["mirror_url"].stringValue
    }
}


extension Owner {
    public init(swifty json: JSON) {
        self.login = json["login"].stringValue
        self.id = json["id"].intValue
        self.avatarUrl = json["avatar_url"].stringValue
        self.url = json["url"].stringValue
        self.htmlUrl = json["html_url"].stringValue
        self.followersUrl = json["followers_url"].stringValue
        self.followingUrl = json["following_url"].stringValue
        self.gistsUrl = json["gists_url"].stringValue
        self.starredUrl = json["starred_url"].stringValue
        self.subscriptionsUrl = json["subscriptions_url"].stringValue
        self.organizationsUrl = json["organizations_url"].stringValue
        self.reposUrl = json["repos_url"].stringValue
        self.eventsUrl = json["events_url"].stringValue
        self.receivedEventsUrls = json["received_events_url"].stringValue
        self.type = json["type"].stringValue
        self.siteAdmin = json["site_admin"].boolValue

        self.gravatarId = json["gravatar_id"].stringValue
    }
}
