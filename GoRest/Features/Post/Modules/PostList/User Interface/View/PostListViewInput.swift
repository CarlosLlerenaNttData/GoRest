//
//  PostListViewInput.swift
//  GoRest
//
//  Created by Carlos Llerena on 12/07/2022.
//  Copyright © 2022 NTT DATA Europe & Latam. All rights reserved.
//

protocol PostListViewInput: AnyObject {

    func setUpInitialState()
    func moduleInput() -> PostListModuleInput
    func setPostList(_ postList: [Post])
    func appendToPostList(_ postList: [Post])
    func showActivityIndicatorView()
    func hideActivityIndicatorView()
}
