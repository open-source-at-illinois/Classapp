import React from 'react';
import { Text, View } from 'react-native';
import { Link } from 'react-router-native';

const Home = () => {
    return(
        <View>
            <Text>
                This is the Home Screen
            </Text>
            <Link to="/auth">
                <Text>Auth</Text>
            </Link>
        </View>
    );
}

export default Home;