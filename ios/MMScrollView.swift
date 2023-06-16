//
//  MMScrollView.swift
//  ReactNativeFunScroll
//
//  Created by Matheus Michels on 12/06/23.
//

import SwiftUI

// https://samwize.com/2022/03/24/how-to-communicate-between-swiftui-and-uikit/
class MMScrollViewProps: ObservableObject {
    @Published var data = [String]()
    @Published var children: AnyView?
}

struct MMScrollView: View {
    @ObservedObject var props: MMScrollViewProps

    init(props: MMScrollViewProps) {
        self.props = props
    }

    var body: some View {
        Color.blue.overlay(
            ScrollView {
                VStack {
                    Text("Hello, World!").foregroundColor(.black).font(.title)
                    Text("This is SwiftUI being rendered in RN").foregroundColor(.black).font(.caption)

                    if let children = props.children {
                        children
                    }
                }
            }

        ).padding(.horizontal)
    }
}
