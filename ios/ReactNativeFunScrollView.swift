import ExpoModulesCore
import SwiftUI

// This view will be used as a native component. Make sure to inherit from `ExpoView`
// to apply the proper styling (e.g. border radius and shadows).
class ReactNativeFunScrollView: ExpoView {
    private let controller: UIHostingController<MMScrollView>

    private var scrollViewProps: MMScrollViewProps
    private let scrollView: MMScrollView

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
        controller.view.frame = bounds
    }
}
