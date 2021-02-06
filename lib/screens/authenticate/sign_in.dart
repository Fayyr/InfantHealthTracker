import 'package:google_fonts/google_fonts.dart';
import 'package:ihtprototype/screens/authenticate/register.dart';
import 'package:ihtprototype/services/auth.dart';
import 'package:ihtprototype/shared/constants.dart';
import 'package:ihtprototype/shared/loading.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  final Function toggleView;
  SignIn({this.toggleView});

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final AuthService _auth = AuthService();
  final _formKey = GlobalKey<FormState>();
  String error = '';
  bool loading = false;

  // text field state
  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return loading
        ? Loading()
        : Scaffold(
            resizeToAvoidBottomPadding: false,
            backgroundColor: Colors.amber[50],
            appBar: AppBar(
              backgroundColor: Colors.black87,
              elevation: 0.0,
              automaticallyImplyLeading: false,
              title: Text('InfantHealth',
              style: GoogleFonts.raleway(
                fontWeight: FontWeight.w600
              ),),
              actions: <Widget>[
                FlatButton.icon(
                  icon: Icon(Icons.person,
                  color:Colors.white,),
                  label: Text('Register',
                  
                  style: GoogleFonts.raleway(
                    textStyle: TextStyle(color: Colors.white),
                    fontWeight: FontWeight.w600
                    
                  ),),
                                    onPressed: () => widget.toggleView(),
                  
                ),
              ],
            ),
            body: Container(
              padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
              child: Form(
                key: _formKey,
                child: Column(
                  children: <Widget>[
                    SizedBox(height: 20.0),
                    TextFormField(
                      decoration:
                          textInputDecoration.copyWith(hintText: 'Email'),
                      validator: (val) => val.isEmpty ? 'Enter an email' : null,
                      onChanged: (val) {
                        setState(() => email = val);
                      },
                    ),
                    SizedBox(height: 20.0),
                    TextFormField(
                      obscureText: true,
                      decoration:
                          textInputDecoration.copyWith(hintText: 'Password'),
                      validator: (val) => val.length < 4
                          ? 'Enter a password 4+ characters long'
                          : null,
                      onChanged: (val) {
                        setState(() => password = val);
                      },
                    ),
                    SizedBox(height: 40.0),
                    RaisedButton(
                        color: Colors.orange,
                        child: Text(
                          'Sign In',
                          style: TextStyle(color: Colors.white),
                        ),
                        onPressed: () async {
                          if (_formKey.currentState.validate()) {
                            setState(() => loading = true);
                            dynamic result = await _auth
                                .signInWithEmailAndPassword(email, password);
                            if (result == null) {
                              setState(() {
                                loading = false;
                                error =
                                    'Could not sign in with those credentials';
                              });
                            }
                          }
                        }),
                    SizedBox(height: 12.0),
                    Text(
                      error,
                      style: TextStyle(color: Colors.red, fontSize: 14.0),
                    ),
                  ],
                ),
              ),
            ),
          );
  }
}
