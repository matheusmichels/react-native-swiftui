import ExpoModulesCore
import SwiftUI
import UIKit

// This view will be used as a native component. Make sure to inherit from `ExpoView`
// to apply the proper styling (e.g. border radius and shadows).
class ReactNativeFunScrollView: ExpoView {
    private let controller: UIHostingController<MMScrollView>

    private var scrollViewProps: MMScrollViewProps
    private var scrollView: MMScrollView

    required init(appContext: AppContext? = nil) {
        self.scrollViewProps = MMScrollViewProps()
        self.scrollView = MMScrollView(props: scrollViewProps)
        self.controller = UIHostingController(rootView: scrollView)

        super.init(appContext: appContext)

        clipsToBounds = true
        addSubview(controller.view)
    }

    func setData(data: [String]) {
        scrollViewProps.data = data
    }

    override func layoutSubviews() {
        super.layoutSubviews()
        controller.view.frame = bounds
    }

    override func insertReactSubview(_ subview: UIView!, at atIndex: Int) {
        scrollViewProps.children = AnyView(UIViewToSwiftUI(view: subview))
    }
}

struct UIViewToSwiftUI: UIViewRepresentable {
    let view: UIView

    init(view: UIView) {
        self.view = view
    }

    func makeUIView(context: Context) -> UIView {
        return view
    }

    func updateUIView(_ view: UIViewType, context: Context) {
        // Updates the state of the specified view with new information from SwiftUI.
    }
}
