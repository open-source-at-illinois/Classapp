import { StatusBar } from 'expo-status-bar';
import React from 'react';
import { StyleSheet, View } from 'react-native';
import { NativeRouter } from 'react-router-native';
import { AppLoading } from 'expo';
import { useFonts } from 'expo-font';
import { Lato_400Regular } from '@expo-google-fonts/lato';
import { SafeAreaProvider } from 'react-native-safe-area-context';
import routes from './routes';

export default function App() {
    let [fontsLoaded] = useFonts({
        Lato_400Regular,
    });

    if (!fontsLoaded) {
        return <AppLoading />;
    }

    return (
        <SafeAreaProvider>
            <NativeRouter>
                <View style={styles.container}>
                    {routes}
                </View>
            </NativeRouter>
        </SafeAreaProvider>
    );
}

const styles = StyleSheet.create({
  container: {
      flex: 1,
  },
});