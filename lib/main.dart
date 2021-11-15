import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Login());
}

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Padding(
          padding: EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text('Welcome Back!'),
              Image.asset('images/1.png'),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  TextField(
                    decoration: InputDecoration(
                        labelText: 'email address', hintText: 'Enter your email'),
                  ),
                  SizedBox(height: 25,),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'password',
                      hintText: 'Enter your password',
                    ),
                    obscureText: true,
                    enableSuggestions: false,
                    autocorrect: false,
                  ),
                  SizedBox(height: 15,),
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                      'Forgot Password',
                      style: TextStyle(color: Colors.blue),
                      textAlign: TextAlign.end,
                    ),
                  ),
                ],
              ),
              Container(
                width: 150.0,
                padding: EdgeInsets.all(15.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.blue,
                ),
                child: Text(
                  'Login',
                  style: TextStyle(color: Colors.white),textAlign: TextAlign.center,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Dont have an account ?'),
                  GestureDetector(
                      onTap: () {},
                      child: Text(
                        'Sign Up',
                        style: TextStyle(color: Colors.blue),textAlign: TextAlign.center,
                      )),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
