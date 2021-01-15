import React from 'react';
import { Text, View } from 'react-native';
import { Link } from 'react-router-native';

const Display = () => {
    return(
        <View>
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