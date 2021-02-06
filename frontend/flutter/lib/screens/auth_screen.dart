import 'package:flutter/material.dart';

import 'assignments_screen.dart';

class AuthScreen extends StatelessWidget {
  static const routeName = 'auth';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
        ),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                  'assets/logo.png',
                  width: 200,
                ),
                SizedBox(height: 50),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Panel(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Panel extends StatelessWidget {
  const Panel({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Text(
              'Login',
              style: Theme.of(context).textTheme.headline1.copyWith(
                    color: Theme.of(context).primaryColor,
                  ),
            ),
            Divider(
              color: Colors.black,
            ),
            PanelForm(),
          ],
        ),
      ),
    );
  }
}

class PanelForm extends StatefulWidget {
  const PanelForm({
    Key key,
  }) : super(key: key);

  @override
  _PanelFormState createState() => _PanelFormState();
}

class _PanelFormState extends State<PanelForm> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController netIdTextController;
  TextEditingController passwordTextController;
  FocusNode passwordFocusNode;

  @override
  void initState() {
    netIdTextController = TextEditingController();
    passwordTextController = TextEditingController();
    passwordFocusNode = FocusNode();
    super.initState();
  }

  @override
  void dispose() {
    netIdTextController.dispose();
    passwordTextController.dispose();
    passwordFocusNode.dispose();
    super.dispose();
  }

  submitForm() {
    if (_formKey.currentState.validate()) {
      Navigator.of(context).pushReplacementNamed(AssignmentsScreen.routeName);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'NetID:',
              style: Theme.of(context).textTheme.headline2,
            ),
            SizedBox(height: 10),
            TextFormField(
              controller: netIdTextController,
              textInputAction: TextInputAction.next,
              style: TextStyle(fontSize: 20),
              autocorrect: false,
              validator: (value) {
                if (value.isEmpty) {
                  return 'NetID cannot be empty';
                }
                return null;
              },
              decoration: InputDecoration(
                hintText: 'johndoe@illinois.edu',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(8),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Password:',
              style: Theme.of(context).textTheme.headline2,
            ),
            SizedBox(height: 10),
            TextFormField(
              controller: passwordTextController,
              focusNode: passwordFocusNode,
              textInputAction: TextInputAction.go,
              obscureText: true,
              autocorrect: false,
              validator: (value) {
                if (value.isEmpty) {
                  return 'Password cannot be empty';
                }
                return null;
              },
              onEditingComplete: submitForm,
              style: TextStyle(fontSize: 20),
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(8),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Center(
              child: RaisedButton(
                onPressed: submitForm,
                color: Theme.of(context).primaryColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                textColor: Colors.white,
                child: Container(
                  height: 50,
                  width: 100,
                  child: Center(
                    child: Text(
                      'GO',
                      style: TextStyle(
                        fontSize: 25,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
