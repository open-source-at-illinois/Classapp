import React from 'react';
import { Appbar } from 'react-native-paper';
import { StyleSheet } from 'react-native';

const CommonAppBar = () => (
 <Appbar style={styles.bottom}>
   <Appbar.BackAction
     onPress={() => console.log('Pressed back')}
    />
    <Appbar.Content title="Applications"/>
  </Appbar>
 );

export default CommonAppBar;

const styles = StyleSheet.create({
  bottom: {
      width: 432,
      backgroundColor: '#13294b',
      justifyContent: 'flex-start'
  },
});