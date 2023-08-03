import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tomisha_app/screens/login/view/register_button.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          width: double.infinity,
          height: 50,
          child: Card(
            child: Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: EdgeInsets.only(right: 15.0),
                child: Text(
                  'Login',
                  style: TextStyle(
                    color: Color(0xFF319795),
                    fontFamily: 'Lato',
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          width: double.infinity,
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 20),
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xFFEBF4FF),
                  Color(0xFFE6FFFA),
                ],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              ),
            ),
            child: MediaQuery.of(context).orientation == Orientation.landscape
                ? bodyWebView()
                : bodyMobileView(),
          ),
        ),
      ],
    );
  }

  websiteTitle(String title) {
    return Text(
      title,
      style: const TextStyle(
        color: Color(0xFF2D3748),
        fontFamily: 'Lato',
        fontWeight: FontWeight.bold,
        fontSize: 30,
        letterSpacing: 1.2,
      ),
    );
  }



  bodyWebView() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          children: [
            websiteTitle('Deine Job\nwebsite'),
            const SizedBox(height: 20),
            const RegisterButton(),
          ],
        ),
        const SizedBox(width: 50),
        Container(
          height: 250,
          width: 250,
          decoration: const BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
            image: DecorationImage(
              image: AssetImage('assets/images/undraw_agreement_aajr.png'),
            ),
          ),
        ),
      ],
    );
  }

  bodyMobileView() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          children: [
            websiteTitle('Deine Job'),
            websiteTitle('website'),
            const SizedBox(height: 20),
          ],
        ),
        const SizedBox(width: 50),
        SvgPicture.asset('assets/images/undraw_agreement_aajr.svg'),
      ],
    );
  }
}
