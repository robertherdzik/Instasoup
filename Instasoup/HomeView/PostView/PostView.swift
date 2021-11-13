//
//  PostView.swift
//  Instasoup
//
//  Created by Robert Herdzik on 14/11/2021.
//

import SwiftUI

struct PostView: View {
    private enum Constant {
        static let postHeaderViewPadding: EdgeInsets = .init(top: 10,
                                                             leading: 10,
                                                             bottom: 0,
                                                             trailing: 10)
        static let postImageHeight: CGFloat = 300

        enum SocialButtons {
            static let spacing: CGFloat = 18
            static let padding: EdgeInsets = .init(
                top: 0,
                leading: 15,
                bottom: 0,
                trailing: 15
            )
        }

        enum LikesCounter {
            static let varticalSpacing: CGFloat = 10
            static let lineLimit = 2
            static let padding: EdgeInsets = .init(
                top: 0,
                leading: 15,
                bottom: 10,
                trailing: 15
            )
        }
    }

    let post: Post

    var body: some View {
        VStack(alignment: .leading) {
            VStack(alignment: .center) {
                makePostHeaderView()
                makePostImageView()
                makeSocialButtonView()
            }
            makeLikesCounterView()
        }
    }

    private func makePostHeaderView() -> some View {
        func makeUserDetailsView() -> some View {
            VStack(alignment: .leading) {
                Text(post.userName)
                    .font(.body)
                Text(post.location)
                    .font(.caption)
            }
        }

        return HStack {
            PostProfileImageView(asset: post.profileImageAsset)
            makeUserDetailsView()
            Spacer()
            ActionButtonView(asset: .more)
                .clipShape(Capsule())
        }
        .padding(Constant.postHeaderViewPadding)
    }

    private func makePostImageView() -> some View {
        Image(post.postImageAsset)
            .resizable()
            .scaledToFill()
            .frame(width: nil,
                   height: Constant.postImageHeight,
                   alignment: .center)
            .clipped()
    }

    private func makeSocialButtonView() -> some View {
        HStack(alignment: .center,
               spacing: Constant.SocialButtons.spacing) {
            ActionButtonView(asset: .fav)
            ActionButtonView(asset: .comment)
            ActionButtonView(asset: .message)
            Spacer()
            ActionButtonView(asset: .save)
        }
        .padding(Constant.SocialButtons.padding)
    }

    private func makeLikesCounterView() -> some View {
        VStack(alignment: .leading) {
            Spacer(minLength: Constant.LikesCounter.varticalSpacing)
            Text(post.likesValue)
                .font(.footnote)
                .fontWeight(.bold)
            Spacer(minLength: Constant.LikesCounter.varticalSpacing)
            Text(post.content)
                .lineLimit(Constant.LikesCounter.lineLimit)
                .fixedSize(horizontal: false,
                           vertical: true)
        }
        .padding(Constant.LikesCounter.padding)
    }
}

struct PostView_Previews: PreviewProvider {
    static var previews: some View {
        PostView(post: HomeViewModelMock.makeMockPost2())
            .frame(width: nil,
                   height: 500,
                   alignment: .center)
            .border(.pink)
    }
}
