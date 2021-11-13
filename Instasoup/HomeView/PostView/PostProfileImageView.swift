//
//  PostProfileImageView.swift
//  Instasoup
//
//  Created by Robert Herdzik on 14/11/2021.
//

import SwiftUI

struct PostProfileImageView: View {
    private enum Constant {
        static let imageSize: CGSize = .init(width: 45,
                                             height: 45)
    }

    let asset: String

    var body: some View {
        Image(asset)
            .resizable()
            .frame(width: Constant.imageSize.width,
                   height: Constant.imageSize.height,
                   alignment: .leading)
            .clipShape(Capsule())
    }
}

struct PostProfileImageView_Previews: PreviewProvider {
    static var previews: some View {
        PostProfileImageView(asset: "profile_3")
            .border(.pink)
    }
}
