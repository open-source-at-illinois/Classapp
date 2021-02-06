import React from 'react';
import { Text, View } from 'react-native';
import { Link } from 'react-router-native';
import CommonAppBar from './CommonAppBar';

const Home = () => {
    return(
        <View>
            <CommonAppBar title="Home"/>
            <Text>
                This is the Home Screen
            </Text>
            <Link to="/apps">
                <Text>Apps</Text>
            </Link>
        </View>
    );
}

export default Home;