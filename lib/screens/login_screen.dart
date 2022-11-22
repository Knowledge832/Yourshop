import 'package:flutter/material.dart';
import 'package:flutter_first_app/screens/home_screen.dart';
import '../screens/signup.dart';
import '../widgets/reusable_widget.dart';

import '../utils/colors.dart';

class login_screen extends StatefulWidget {
  const login_screen({super.key});

  @override
  State<login_screen> createState() => _login_screenState();
}

class _login_screenState extends State<login_screen> {
  TextEditingController _userNameController = TextEditingController();
  // TextEditingController _userEmailController = TextEditingController();
  TextEditingController _userPasswordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          "Login Screen",
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
          ),
        ),
        child: SingleChildScrollView(
          padding: EdgeInsets.fromLTRB(
              20, MediaQuery.of(context).size.height * 0.2, 20, 0),
          child: Column(
            children: <Widget>[
              logoWidget("assets/images/papa.jpg"),
              const SizedBox(
                height: 20,
              ),
              reusableTextField(
                  "User Name", Icons.person, false, _userNameController),
              const SizedBox(height: 20),
              // reusableTextField(
              //     "Enter Email", Icons.email, false, _userNameController),
              // const SizedBox(
              //   height: 20,
              // ),
              reusableTextField(
                  "Password", Icons.lock, false, _userNameController),
              const SizedBox(
                height: 20,
              ),
              signInSignUpButton(context, true, () => {}),
              signUpOption(),
            ],
          ),
        ),
      ),
    );
  }

  Row signUpOption() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          "Don't have an account?",
          style: TextStyle(color: Colors.white70, fontSize: 17),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Home()));
          },
          child: const Text(
            "Sign Up",
            style: TextStyle(
                color: Colors.white, fontSize: 17, fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}
