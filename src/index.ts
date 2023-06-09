import {
  NativeModulesProxy,
  EventEmitter,
  Subscription,
} from "expo-modules-core";

// Import the native module. On web, it will be resolved to ReactNativeFunScroll.web.ts
// and on native platforms to ReactNativeFunScroll.ts
import {
  ChangeEventPayload,
  ReactNativeFunScrollViewProps,
} from "./ReactNativeFunScroll.types";
import ReactNativeFunScrollModule from "./ReactNativeFunScrollModule";
import ReactNativeFunScrollView from "./ReactNativeFunScrollView";

// Get the native constant value.
export const PI = ReactNativeFunScrollModule.PI;

export function hello(): string {
  return ReactNativeFunScrollModule.hello();
}

export async function setValueAsync(value: string) {
  return await ReactNativeFunScrollModule.setValueAsync(value);
}

const emitter = new EventEmitter(
  ReactNativeFunScrollModule ?? NativeModulesProxy.ReactNativeFunScroll
);

export function addChangeListener(
  listener: (event: ChangeEventPayload) => void
): Subscription {
  return emitter.addListener<ChangeEventPayload>("onChange", listener);
}

export {
  ReactNativeFunScrollView,
  ReactNativeFunScrollViewProps,
  ChangeEventPayload,
};
