import { ViewProps } from "react-native";

export type ChangeEventPayload = {
  value: string;
};

export type ReactNativeFunScrollViewProps = ViewProps & {
  data: string[];
};
