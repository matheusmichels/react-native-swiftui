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
}

struct MMScrollView: View {
    @ObservedObject var props: MMScrollViewProps

    var body: some View {
        Color.blue.overlay(
            VStack {
                Text("Hello, World!").foregroundColor(.black).font(.title)
                Text("This is SwiftUI being rendered in RN").foregroundColor(.black).font(.caption)

                List {
                    ForEach(props.data, id: \.self) { item in
                        Text(item).foregroundColor(.black)
                    }
                }
            }
        )
    }
}
