import * as React from "react";

import { ReactNativeFunScrollViewProps } from "./ReactNativeFunScroll.types";

export default function ReactNativeFunScrollView(
  props: ReactNativeFunScrollViewProps
) {
  return (
    <ul>
      {props.data.map((item) => (
        <li>{item}</li>
      ))}
    </ul>
  );
}
