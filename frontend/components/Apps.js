import React from 'react';
import { Text, View } from 'react-native';
import { Link } from 'react-router-native';

const Apps = () => {
    return(
        <View>
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