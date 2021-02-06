import React from 'react';
import { Text, View, TextInput, StyleSheet, TouchableOpacity, Image, StatusBar } from 'react-native';

import Styles from './Styles';

const Auth = () => {
    var netidTextInput, passwordTextInput;

    return(
        <View style={style.bg}>
            <StatusBar
                color="white"
                backgroundColor={Styles.color.primary}
            />
            <Image
                style={style.logoImage}
                source={
                    require('../assets/img/Logo.png')
                }
            />
            <View style={style.panel}>
                <Text style={style.loginTitle}>
                    Login
                </Text>
                <View style={style.line}></View>
                <Text style={style.labelText}>
                        NetID
                </Text>
                <View style={style.textInputBase}>
                    <TextInput
                        autoCapitalize="none"
                        autoCompleteType="email"
                        keyboardType="email-address"
                        multiline={false}
                        returnKeyType="next"
                        onSubmitEditing={
                            () => {
                                passwordTextInput.focus();
                            }
                        }
                        ref={
                            (input) => {
                                netidTextInput = input;
                            }
                        }
                        placeholder="University NetID"
                        blurOnSubmit={false}
                        style={style.textInput}
                    />
                </View>
                <View style={{ height: 20 }} />
                <Text style={style.labelText}>
                        Password
                </Text>
                <View style={style.textInputBase}>
                    <TextInput
                        autoCapitalize="none"
                        autoCompleteType="password"
                        autoCorrect={false}
                        multiline={false}
                        returnKeyType="done"
                        ref={
                            (input) => {
                                passwordTextInput = input;
                            }
                        }
                        placeholder="University Password"
                        secureTextEntry={true}
                        style={style.textInput}
                    />
                </View>
                <TouchableOpacity
                    style={style.loginButton}
                    onPress={() =>
                        {
                            netidTextInput.blur();
                            passwordTextInput.blur();
                        }
                    }>
                    <Text style={style.buttonText}>
                        Go
                    </Text>
                </TouchableOpacity>
            </View>
        </View>
    );
}

const style = StyleSheet.create({
    bg: {
        alignItems: 'center',
        justifyContent: 'center',
        backgroundColor: Styles.color.primary,
        flex: 1,
    },
    labelText: {
        alignSelf: 'flex-start',
        marginHorizontal: 30,
        fontSize: 22,
        fontFamily: Styles.font.main,
        color: Styles.color.primary
    },
    textInput: {
        backgroundColor: 'white',
        borderColor: Styles.color.accent,
        borderWidth: 2,
        padding: 10,
        marginVertical: 10,
        marginHorizontal: 25,
        borderRadius: 10,
        flex: 1,
        fontSize: 20,
        fontFamily: Styles.font.main
    },
    textInputBase: {
        flexDirection: 'row',
        fontFamily: Styles.font.main
    },
    loginButton: {
        marginVertical: 25,
        fontSize: 25,
        width: 200,
        height: 50,
        justifyContent: 'center',
        backgroundColor: Styles.color.primary,
        borderRadius: 10,
    },
    buttonText: {
        fontSize: 25,
        textAlign: 'center',
        fontFamily: Styles.font.main,
        color: 'white',
    },
    logoImage: {
        width: 190,
        height: 150,
        marginBottom: 50,
    },
    loginTitle: {
        fontSize: 35,
        fontFamily: Styles.font.main,
        color: Styles.color.primary,
    },
    panel: {
        alignItems: 'center',
        justifyContent: 'flex-start',
        backgroundColor: Styles.color.silver,
        borderRadius: 30,
        paddingTop: 20,
        paddingHorizontal: 5,
        marginHorizontal: 20,
    },
    line: {
        height: 2,
        width: 350,
        backgroundColor: Styles.color.primary,
        marginVertical: 20,
    }
  });

export default Auth;