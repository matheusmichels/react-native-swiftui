import { requireNativeViewManager } from "expo-modules-core";
import * as React from "react";

import { ReactNativeFunScrollViewProps } from "./ReactNativeFunScroll.types";

const NativeView: React.ComponentType<ReactNativeFunScrollViewProps> =
  requireNativeViewManager("ReactNativeFunScroll");

export default function ReactNativeFunScrollView(
  props: ReactNativeFunScrollViewProps
) {
  return <NativeView {...props} />;
}
