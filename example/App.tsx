import { SafeAreaView, Text, View } from "react-native";
import { ReactNativeFunScrollView } from "react-native-fun-scroll";

export default function App() {
  return (
    <SafeAreaView
      style={{ flex: 1, alignItems: "center", justifyContent: "center" }}
    >
      <ReactNativeFunScrollView
        data={["Play with SwiftUI", "Make coffee", "Play with Expo Modules"]}
        style={{
          flex: 1,
          width: "100%",
          borderRadius: 12,
        }}
      >
        <View>
          <Text>Hello World</Text>
        </View>
      </ReactNativeFunScrollView>
    </SafeAreaView>
  );
}
