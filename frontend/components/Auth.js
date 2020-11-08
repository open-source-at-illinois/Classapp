import React from 'react';
import { Text, View } from 'react-native';
import { Link } from 'react-router-native';

const Auth = () => {
    return(
        <View>
            <Text>
                This is the Authentication Screen
            </Text>
            <Link to="/">
                <Text>Home</Text>
            </Link>
        </View>
    );
}

export default Auth;