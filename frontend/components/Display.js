import React from 'react';
import { Text, View } from 'react-native';
import { Link } from 'react-router-native';
import CommonAppBar from './CommonAppBar';

const Display = () => {
    return(
        <View>
            <CommonAppBar title="Display Assignments" />
            <Text>
                This is the Display Screen
            </Text>
            <Link to="/">
                <Text>Home</Text>
            </Link>
        </View>
    );
}

export default Display;