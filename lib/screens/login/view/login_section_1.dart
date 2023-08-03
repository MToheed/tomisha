import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginSection1 extends StatelessWidget {
  const LoginSection1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MediaQuery.of(context).orientation == Orientation.landscape
        ? section1WebView()
        : section1MobileView();
  }

  section1WebView() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 60,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    height: 60,
                    width: 60,
                    decoration: const BoxDecoration(
                      color: Color(0xFFF7FAFC),
                      shape: BoxShape.circle,
                    ),
                    child: const Text(
                      '1.',
                      style: TextStyle(
                        color: Color(0xFF718096),
                        fontFamily: 'Lato',
                        fontWeight: FontWeight.bold,
                        fontSize: 60,
                      ),
                    ),
                  ),
                  const Text(
                    'Erstellen dein Lebenslauf',
                    style: TextStyle(
                      color: Color(0xFF718096),
                      fontFamily: 'Lato',
                    ),
                  ),
                  const SizedBox(width: 20),
                ],
              ),
            ),
            SvgPicture.asset('assets/images/profile_data.svg'),
          ],
        ),
        SvgPicture.asset(
          'assets/images/arrow_1.svg',
          height: 250,
        ),
      ],
    );
  }

  section1MobileView() {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 20),
          SvgPicture.asset('assets/images/profile_data.svg'),
          SizedBox(
            height: 60,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  height: 60,
                  width: 60,
                  decoration: const BoxDecoration(
                    color: Color(0xFFF7FAFC),
                    shape: BoxShape.circle,
                  ),
                  child: const Text(
                    '1.',
                    style: TextStyle(
                      color: Color(0xFF718096),
                      fontFamily: 'Lato',
                      fontWeight: FontWeight.bold,
                      fontSize: 60,
                    ),
                  ),
                ),
                const Text(
                  'Erstellen dein Lebenslauf',
                  style: TextStyle(
                    color: Color(0xFF718096),
                    fontFamily: 'Lato',
                  ),
                ),
                const SizedBox(width: 20),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
