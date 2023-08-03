import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:tomisha_app/providers/login_provider.dart';

class LoginSection2 extends StatelessWidget {
  const LoginSection2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: MediaQuery.of(context).orientation == Orientation.landscape
          ? section2WebView()
          : section2MobileView(),
    );
  }

  section2WebView() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xFFE6FFFA),
            Color(0xFFEBF4FF),
          ],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
      ),
      child: Column(
        children: [
          Consumer<LoginProvider>(
            builder: (_, model, __) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(width: 350),
                  SvgPicture.asset(
                    (model.getIndex == 0)
                        ? 'assets/images/undraw_task_31wc.svg'
                        : (model.getIndex == 1)
                            ? 'assets/images/about_me.svg'
                            : 'assets/images/job_offers.svg',
                  ),
                  SizedBox(
                    height: 60,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const SizedBox(width: 20),
                        const Text(
                          '2.',
                          style: TextStyle(
                            color: Color(0xFF718096),
                            fontFamily: 'Lato',
                            fontWeight: FontWeight.bold,
                            fontSize: 60,
                          ),
                        ),
                        Text(
                          (model.getIndex == 0)
                              ? 'Erstellen dein Lebenslauf'
                              : (model.getIndex == 1)
                                  ? 'Erstellen ein Jobinserat'
                                  : 'Erhalte Vermittlungs- angebot von Arbeitgeber',
                          style: const TextStyle(
                            color: Color(0xFF718096),
                            fontFamily: 'Lato',
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              );
            },
          ),
        ],
      ),
    );
  }

  section2MobileView() {
    return Column(
      children: [
        const SizedBox(height: 40),
        Container(
          padding: const EdgeInsets.symmetric(vertical: 10),
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xFFE6FFFA),
                Color(0xFFEBF4FF),
              ],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            ),
          ),
          child: Consumer<LoginProvider>(
            builder: (_, model, __) {
              return SizedBox(
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 60,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          const SizedBox(width: 20),
                          const Text(
                            '2.',
                            style: TextStyle(
                              color: Color(0xFF718096),
                              fontFamily: 'Lato',
                              fontWeight: FontWeight.bold,
                              fontSize: 60,
                            ),
                          ),
                          Text(
                            (model.getIndex == 0)
                                ? 'Erstellen dein Lebenslauf'
                                : (model.getIndex == 1)
                                    ? 'Erstellen ein Jobinserat'
                                    : 'Erhalte Vermittlungs- angebot von Arbeitgeber',
                            style: const TextStyle(
                              color: Color(0xFF718096),
                              fontFamily: 'Lato',
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                    SvgPicture.asset(
                      (model.getIndex == 0)
                          ? 'assets/images/undraw_task_31wc.svg'
                          : (model.getIndex == 1)
                              ? 'assets/images/about_me.svg'
                              : 'assets/images/job_offers.svg',
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
