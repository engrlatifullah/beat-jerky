import 'package:beat_jerky/screens/auth_screen/signup_screen.dart';
import 'package:beat_jerky/screens/bottom_nav_bar.dart';

import 'package:beat_jerky/utils/color.dart';
import 'package:beat_jerky/widget/backward_button.dart';
import 'package:beat_jerky/widget/reusable_text.dart';
import 'package:beat_jerky/widget/reusable_textformfield.dart';
import 'package:beat_jerky/widget/round_button.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  bool pass = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title:
          const ReusableText(
            title: "Log in",
            size: 24,
            weight: FontWeight.bold,
            color: whiteColor,
          ),
          automaticallyImplyLeading: false,
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Row(
                //   children: const [
                //     BackwardButton(),
                //     SizedBox(
                //       width: 20,
                //     ),
                //     ReusableText(
                //       title: "Log in",
                //       size: 24,
                //       weight: FontWeight.bold,
                //       color: whiteColor,
                //     ),
                //   ],
                // ),
                Center(
                  child: SizedBox(
                    height: 150,
                    width: 150,
                    child: Image.asset(
                      "assets/images/logo.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const ReusableText(
                  title: "Email",
                  size: 16,
                  color: whiteColor,
                ),
                const SizedBox(
                  height: 5,
                ),
                const ReusableTextForm(
                  hintText: "Email",
                  // prefixIcon: Icon(
                  //   Icons.email_outlined,
                  //   color: whiteColor,
                  // ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const ReusableText(
                  title: "Password",
                  size: 16,
                  color: whiteColor,
                ),
                const SizedBox(
                  height: 5,
                ),
                 ReusableTextForm(
                  hintText: "Password",
                  obscureText: pass,
                  suffixIcon: InkWell(
                    onTap: (){
                      setState(() {
                        pass = !pass;
                      });
                    },
                    child: Icon(
                      pass ? Icons.visibility : Icons.visibility_off,
                      color: whiteColor,
                    ),
                  ),
                ),

                const SizedBox(
                  height: 20,
                ),
                RoundButton(title: "Log in", onTap: () { Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
                  return const BottomNavBar();
                }),); },),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const ReusableText(
                      title: "Don't have an account?",
                      size: 16,
                      color: whiteColor,
                    ),
                    TextButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
                        return const SignupScreen();
                      }),);
                    }, child:
                    const ReusableText(
                      title: "Sign Up",
                      size: 16,
                      color: whiteColor,
                      weight: FontWeight.bold,
                    ),),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
