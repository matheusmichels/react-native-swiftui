import * as React from "react";

import { ReactNativeFunScrollViewProps } from "./ReactNativeFunScroll.types";

export default function ReactNativeFunScrollView(
  props: ReactNativeFunScrollViewProps
) {
  return (
    <div>
      <span>{props.name}</span>
    </div>
  );
}
