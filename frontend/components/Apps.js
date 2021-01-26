import React from 'react';
import { Text, View, StyleSheet } from 'react-native';
import { Link } from 'react-router-native';
import CommonAppBar from './CommonAppBar';

const Apps = () => {
    return(
        <View style={style.bg}>
            <CommonAppBar />
            <Text>
                This is the Apps Screen
            </Text>
            <Link to="/display">
                <Text>Display</Text>
            </Link>
        </View>
    );
}

export default Apps;

const style = StyleSheet.create({
    bg: {
        flexDirection: 'column',
        justifyContent: 'flex-start',
    }
});