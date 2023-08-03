import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:tomisha_app/providers/login_provider.dart';

class LoginSection3 extends StatelessWidget {
  const LoginSection3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MediaQuery.of(context).orientation == Orientation.landscape
        ? section3WebView()
        : section3MobileView();
  }

  section3WebView() {
    return Column(
      children: [
        const SizedBox(height: 5),
        SvgPicture.asset(
          'assets/images/arrow_2.svg',
          height: 200,
        ),
        Consumer<LoginProvider>(
          builder: (_, model, __) {
            return Row(
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
                          '3.',
                          style: TextStyle(
                            color: Color(0xFF718096),
                            fontFamily: 'Lato',
                            fontWeight: FontWeight.bold,
                            fontSize: 60,
                          ),
                        ),
                      ),
                      Text(
                        (model.getIndex == 0)
                            ? 'Mit nur einem Klick\nbewerben'
                            : (model.getIndex == 1)
                                ? 'Wähle deinen neuen Mitarbeiter aus'
                                : 'Vermittlung nach Provision oder Stundenlohn',
                        style: const TextStyle(
                          color: Color(0xFF718096),
                          fontFamily: 'Lato',
                        ),
                      ),
                      const SizedBox(width: 20),
                    ],
                  ),
                ),
                SvgPicture.asset(
                  (model.getIndex == 0)
                      ? 'assets/images/undraw_personal_file_222m.svg'
                      : (model.getIndex == 1)
                          ? 'assets/images/swipe_profiles.svg'
                          : 'assets/images/business_deal.svg',
                ),
              ],
            );
          },
        ),
      ],
    );
  }

  section3MobileView() {
    return Consumer<LoginProvider>(
      builder: (_, model, __) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(width: 60),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 40),
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
                          '3.',
                          style: TextStyle(
                            color: Color(0xFF718096),
                            fontFamily: 'Lato',
                            fontWeight: FontWeight.bold,
                            fontSize: 60,
                          ),
                        ),
                      ),
                      Text(
                        (model.getIndex == 0)
                            ? 'Mit nur einem Klick\nbewerben'
                            : (model.getIndex == 1)
                                ? 'Wähle deinen neuen Mitarbeiter aus'
                                : 'Vermittlung nach Provision oder Stundenlohn',
                        style: const TextStyle(
                          color: Color(0xFF718096),
                          fontFamily: 'Lato',
                        ),
                      ),
                      const SizedBox(width: 20),
                    ],
                  ),
                ),
                SvgPicture.asset(
                  (model.getIndex == 0)
                      ? 'assets/images/undraw_personal_file_222m.svg'
                      : (model.getIndex == 1)
                          ? 'assets/images/swipe_profiles.svg'
                          : 'assets/images/business_deal.svg',
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}
