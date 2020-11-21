import React from 'react';
import { Text, View, TextInput, StyleSheet, TouchableOpacity, Image } from 'react-native';

const Auth = () => {
    var netidTextInput, passwordTextInput;

    return(
        // Background Gradient
        <View style={style.bg}>
            <Image
                style={style.logo}
                source={{
                    uri: 'https://media.discordapp.net/attachments/779768788890419231/779769292697632778/Logo_copy.png',
                  }}
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
                        onSubmitEditing={() => { passwordTextInput.focus(); }}
                        ref={(input) => { netidTextInput = input; }}
                        placeholder="University NetID"
                        blurOnSubmit={false}
                        style={style.textInput}
                    />
                </View>
                <View style={{ height: 20 }}></View>
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
                        ref={(input) => { passwordTextInput = input; }}
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
        backgroundColor: '#182249',
        flex: 1,
    },
    labelText: {
        alignSelf: 'flex-start',
        marginHorizontal: 30,
        fontSize: 22,
        fontFamily: 'Lato_400Regular',
        color: '#182249'
    },
    textInput: {
        backgroundColor: '#fff',
        borderColor: '#FFA91D',
        borderWidth: 2,
        padding: 10,
        margin: 10,
        marginHorizontal: 25,
        borderRadius: 10,
        flex: 1,
        fontSize: 20,
        fontFamily: 'Lato_400Regular'
    },
    textInputBase: {
        flexDirection: 'row',
        fontFamily: 'Lato_400Regular'
    },
    loginButton: {
        marginVertical: 25,
        fontSize: 25,
        width: 200,
        height: 50,
        justifyContent: 'center',
        backgroundColor: '#182249',
        borderRadius: 10,
    },
    buttonText: {
        fontSize: 25,
        textAlign: 'center',
        fontFamily: 'Lato_400Regular',
        color: 'white',
    },
    logo: {
        width: 190,
        height: 150,
        marginBottom: 50,
    },
    loginTitle: {
        fontSize: 35,
        fontFamily: 'Lato_400Regular',
        color: '#182249',
    },
    panel: {
        alignItems: 'center',
        justifyContent: 'flex-start',
        backgroundColor: '#BEC0CB',
        borderRadius: 30,
        paddingTop: 20,
        paddingHorizontal: 5,
        marginHorizontal: 20,
        shadowColor: '#000',
        shadowOffset: { width: 0, height: 1 },
        shadowOpacity: 0.8,
        shadowRadius: 2,
        elevation: 5
    },
    line: {
        height: 2,
        width: 350,
        backgroundColor: 'grey',
        marginVertical: 20,
    }
  });

export default Auth;