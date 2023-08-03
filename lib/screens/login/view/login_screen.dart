import 'package:flutter/material.dart';
import 'view.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MediaQuery.of(context).orientation == Orientation.landscape
          ? screenWebView()
          : screenMobileView(),
    );
  }

  screenWebView() {
    return const SingleChildScrollView(
      child: Column(
        children: [
          LoginBody(),
          SizedBox(height: 40),
          LoginButtons(),
          LoginSection1(),
          LoginSection2(),
          LoginSection3(),
          SizedBox(height: 20),
        ],
      ),
    );
  }

  screenMobileView() {
    return const Column(
      children: [
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                LoginBody(),
                SizedBox(height: 40),
                LoginButtons(),
                LoginSection1(),
                LoginSection2(),
                LoginSection3(),
                SizedBox(height: 20),
              ],
            ),
          ),
        ),
        RegisterButton(),
        SizedBox(height: 5),
      ],
    );
  }
}
