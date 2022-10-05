import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:google_sign_in/widgets.dart';
import 'package:healing_project/UserSeting/Login/login.dart';

class wraper extends StatefulWidget {
  const wraper({super.key});

  @override
  State<wraper> createState() => _wraperState();
}

class _wraperState extends State<wraper> {
  GoogleSignInAccount? _currentUser;
  Future<void> _handleSignIn() async {
    try {
      await _googleSignIn.signIn();
    } catch (error) {
      print(error);
    }
  }

  @override
  void initState() {
    _googleSignIn.onCurrentUserChanged.listen((event) {
      setState(() {
        _currentUser = event;
      });
    });
    _googleSignIn.signInSilently();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(_currentUser == null ? 'Login' : 'Dashboard'),
        ),
        body: _currentUser == null
            ? Container(
                child: TextButton(
                    onPressed: () => _handleSignIn(),
                    child: Text('Login With Google')))
            : Container(
                child: ListTile(
                  leading: GoogleUserCircleAvatar(identity: _currentUser!),
                  title: Text(_currentUser!.displayName ?? ''),
                  subtitle: Text(_currentUser!.email),
                ),
              ));
  }
}

GoogleSignIn _googleSignIn = GoogleSignIn(
  scopes: [
    'email',
    'https://www.googleapis.com/auth/contacts.readonly',
  ],
);
