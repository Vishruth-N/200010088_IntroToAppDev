import 'package:todo_app_firestore_example/page/authentication_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SignInPage extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Column(
        children: [
          Spacer(flex: 18,),
          Text(
            "Welcome to TODO App",
            style: TextStyle(fontSize: 18,),
          ),
          Spacer(),
          TextField(
            controller: emailController,
            decoration: InputDecoration(
              hintText: "Email",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(12)),
              )
            ),
          ),
          Spacer(flex: 1,),
          TextField(
            controller: passwordController,
            decoration: InputDecoration(
              hintText: "Password",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(12)),
              )
            ),
          ),
          RaisedButton(
            onPressed: () {
              context.read<AuthenticationService>().signIn(
                email: emailController.text.trim(),
                password: passwordController.text.trim(),
              );
            },
            child: Text("Sign in"),
          ),
          Spacer(flex: 18,)
        ],
      ),
    );
  }
}