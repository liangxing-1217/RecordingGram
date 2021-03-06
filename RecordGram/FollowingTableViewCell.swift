//
//  FollowingTableViewCell.swift
//  RecordGram
//
//  Created by Liang on 9/8/17.
//  Copyright © 2017 Meridian Inc. All rights reserved.
//

import UIKit

class FollowingTableViewCell: UITableViewCell {

    @IBOutlet weak var userImageView: RoundImageView!
    @IBOutlet weak var verifyImageView: RoundImageView!
    @IBOutlet weak var userInfoLabel: UILabel!
    @IBOutlet weak var followButton: UIButton!

    var uuid = ""
    var amFollowing: Bool!

    @IBAction func unFollowerUser(_ sender: Any) {
        if let parentViewController = parentViewController as? FollowingTableViewController {
            if amFollowing {
                UserClient.shared.unFollow(uuid: self.uuid, success: {
                    self.amFollowing = false
                    parentViewController.setFollowUnFollowButton(self.followButton, amFollowing: self.amFollowing)
                }, failure: { error in })
            } else {
                UserClient.shared.follow(uuid: self.uuid, success: {
                    self.amFollowing = true
                    parentViewController.setFollowUnFollowButton(self.followButton, amFollowing: self.amFollowing)
                }, failure: { error in })
            }
        }
    }
}
