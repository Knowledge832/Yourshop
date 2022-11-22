import 'package:flutter/material.dart';
import '../utils/colors.dart';
import '../widgets/reusable_widget.dart';
import '../screens/login_screen.dart';
//import 'package:flutter_first_app/widgets/reusable_widget.dart';

class signUpScreen extends StatefulWidget {
  const signUpScreen({super.key});

  @override
  State<signUpScreen> createState() => _signUpScreenState();
}

class _signUpScreenState extends State<signUpScreen> {
  TextEditingController _userNameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          "Sign In",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              hexStringToColor("CB2B92"),
              hexStringToColor("9546C4"),
              hexStringToColor("5E61F4"),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        // child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.fromLTRB(
              20, MediaQuery.of(context).size.height * 0.2, 20, 0),
          child: ListView(
            children: <Widget>[
              logoWidget('assets/images/papa.jpg'),
              const SizedBox(
                height: 20,
              ),
              reusableTextField("Enter Username", Icons.person_outline, false,
                  _userNameController),
              const SizedBox(
                height: 20,
              ),
              reusableTextField("Enter Email Address", Icons.mail_outline,
                  false, _emailController),
              const SizedBox(
                height: 20,
              ),
              reusableTextField("Enter password", Icons.lock_outline, false,
                  _passwordController),
              signInSignUpButton(context, false, () {}),
            ],
          ),
        ),
      ),
    );
  }
}
