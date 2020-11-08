import { StatusBar } from 'expo-status-bar';
import React from 'react';
import { Button, StyleSheet, Text, View, TouchableOpacity } from 'react-native';
import { Link, NativeRouter } from 'react-router-native';
import routes from './routes';

export default function App() {
  return (
    <NativeRouter>
      <View style={styles.container}>
        {routes}
      </View>
    </NativeRouter>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: '#fff',
    alignItems: 'center',
    justifyContent: 'center',
  },
});