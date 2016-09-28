//
//  SwiftyImplementation.swift
//  JsonPerf
//
//  Created by Matt Dias on 9/27/16.
//  Copyright © 2016 Zipcar. All rights reserved.
//

import Foundation
import SwiftyJSON

extension SwiftyJ

extension Repo {

    public init(swifty json: JSON) {
        id = json["id"].intValue
        name = json["name"].stringValue
        fullName = json["full_name"].stringValue

        owner = Owner(swifty: json["owner"])

        isPrivate = json["private"].boolValue
        htmlUrl = json["html_url"].stringValue
        description = json["description"].stringValue
        isForked = json["fork"].boolValue
        url = json["url"].stringValue
        forksUrl = json["forks_url"].stringValue
        keysUrl = json["keys_url"].stringValue
        collaboratorsUrl = json["collaborators_url"].stringValue
        teamsUrl = json["teams_url"].stringValue
        hooksUrl = json["hooks_url"].stringValue
        issueEventsUrl = json["issue_events_url"].stringValue
        eventsUrl = json["events_url"].stringValue
        assigneesUrl = json["assignees_url"].stringValue
        branchesUrl = json["branches_url"].stringValue
        tagsUrl = json["tags_url"].stringValue
        blobsUrl = json["blobs_url"].stringValue
        gitTagsUrls = json["git_tags_url"].stringValue
        gitRefsUrl = json["git_refs_url"].stringValue
        treesUrl = json["trees_url"].stringValue
        statusesUrl = json["statuses_url"].stringValue
        languagesUrl = json["languages_url"].stringValue
        stargazersUrl = json["stargazers_url"].stringValue
        contributorsUrl = json["contributors_url"].stringValue
        subscribersUrl = json["subscribers_url"].stringValue
        subscriptionUrl = json["subscription_url"].stringValue
        commitsUrl = json["commits_url"].stringValue
        gitCommitsUrl = json["git_commits_url"].stringValue
        commentsUrl = json["comments_url"].stringValue
        issueCommentUrl = json["issue_comment_url"].stringValue
        contentsUrl = json["contents_url"].stringValue
        compareUrl = json["compare_url"].stringValue
        mergesUrl = json["merges_url"].stringValue
        archiveUrl = json["archive_url"].stringValue
        issuesUrl = json["issues_url"].stringValue
        pullsUrl = json["pulls_url"].stringValue
        downloadsUrl = json["downloads_url"].stringValue
        milestonesUrl = json["milestones_url"].stringValue
        notificationsUrl = json["notifications_url"].stringValue
        labelsUrl = json["labels_url"].stringValue
        releasesUrl = json["releases_url"].stringValue
        deploymentsUrl = json["deployments_url"].stringValue
        createdAt = json["created_at"].stringValue
        updatedAt = json["updated_at"].stringValue
        pushedAt = json["pushed_at"].stringValue
        gitUrl = json["git_url"].stringValue
        sshUrl = json["ssh_url"].stringValue
        cloneUrl = json["clone_url"].stringValue
        svnUrl = json["svn_url"].stringValue
        size = json["size"].intValue
        stargazersCount = json["stargazers_count"].intValue
        watchersCount = json["watchers_count"].intValue
        language = json["language"].stringValue
        hasIssues = json["has_issues"].boolValue
        hasPages = json["has_pages"].boolValue
        forksCount = json["forks_count"].intValue
        openIssues = json["open_issues"].intValue
        watchers = json["watchers"].intValue
        defaultBranch = json["default_branch"].stringValue
        score = json["score"].intValue
    }
}


extension Owner {
    public init(swifty json: JSON) {
        login = json["login"].stringValue
        id = json["id"].intValue
        avatarUrl = json["avatar_url"].stringValue
        url = json["url"].stringValue
        htmlUrl = json["html_url"].stringValue
        followersUrl = json["followers_url"].stringValue
        followingUrl = json["following_url"].stringValue
        gistsUrl = json["gists_url"].stringValue
        starredUrl = json["starred_url"].stringValue
        subscriptionsUrl = json["subscriptions_url"].stringValue
        organizationsUrl = json["organizations_url"].stringValue
        reposUrl = json["repos_url"].stringValue
        eventsUrl = json["events_url"].stringValue
        receivedEventsUrls = json["received_events_url"].stringValue
        type = json["type"].stringValue
        siteAdmin = json["site_admin"].boolValue
    }
}
