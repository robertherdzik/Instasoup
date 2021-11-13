//
//  HeaderView.swift
//  Instasoup
//
//  Created by Robert Herdzik on 14/11/2021.
//

import SwiftUI

struct HeaderView: View {
    private enum Constant {
        static let horizontalSpacing: CGFloat = 20
        static let padding: EdgeInsets = .init(top: 0,
                                               leading: 20,
                                               bottom: 0,
                                               trailing: 20)
        enum ViewTitle {
            static let value = " Instasoup "
            static let lineLimit = 2
            static let minimumScaleFactor: CGFloat = 0.7
            static let font: Font = .custom("FONTSPRINGDEMO-BlueVinylRegular",
                                            size: 35)
        }

        enum SocialButtons {
            static let spacing: CGFloat = 20
            static let verticalAlignmentOffset: CGFloat = 8
        }
    }

    var body: some View {
        HStack(alignment: .center,
               spacing: Constant.horizontalSpacing) {
            makeLogoNameView()
            Spacer()
            makeSocialButtonsView()
        }
        .padding(Constant.padding)
    }

    private func makeLogoNameView() -> some View {
        Text(Constant.ViewTitle.value)
            .lineLimit(Constant.ViewTitle.lineLimit)
            .minimumScaleFactor(Constant.ViewTitle.minimumScaleFactor)
            .font(Constant.ViewTitle.font)
    }

    private func makeSocialButtonsView() -> some View {
        AnyView(
            HStack(alignment: .center,
                   spacing: Constant.SocialButtons.spacing) {
                ActionButtonView(asset: .addPost)
                ActionButtonView(asset: .fav)
                ActionButtonView(asset: .message)
            }.alignmentGuide(VerticalAlignment.center, computeValue: { _ in Constant.SocialButtons.verticalAlignmentOffset })
        )
    }
}

struct Header_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
            .border(.pink)
    }
}
