import { StyleSheet, Text, View } from "react-native";
import * as ReactNativeFunScroll from "react-native-fun-scroll";

export default function App() {
  return (
    <View style={styles.container}>
      <Text>{ReactNativeFunScroll.hello()}</Text>
    </View>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: "#fff",
    alignItems: "center",
    justifyContent: "center",
  },
});
