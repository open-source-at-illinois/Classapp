import React from 'react';
import { Appbar } from 'react-native-paper';
import { useSafeAreaInsets } from 'react-native-safe-area-context';

const CommonAppBar = (props) => {
    const insets = useSafeAreaInsets();
    return (
        <Appbar style={{
                marginTop: insets.top,
                backgroundColor: '#13294b',
            }}>
            <Appbar.Action onPress={() => console.log('Pressed ' + props.title)} icon="menu"/>
            <Appbar.Content title={props.title}/>
        </Appbar>
    );
}

export default CommonAppBar;