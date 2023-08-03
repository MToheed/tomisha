import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tomisha_app/providers/login_provider.dart';

class LoginButtons extends StatefulWidget {
  const LoginButtons({Key? key}) : super(key: key);

  @override
  State<LoginButtons> createState() => _LoginButtonsState();
}

class _LoginButtonsState extends State<LoginButtons> {
  List<String> titles = ['Arbeitnehmer', 'Arbeitgeber', 'Temporarburo'];
  List<String> details = [
    'Drei einfache Schritte',
    'zu deinem neuen Job',
    'Drei einfache Schritte',
    'zu deinem neuen Mitarbeiter',
    'Drei einfache Schritte zur',
    'Vermittlung neuer Mitarbeiter',
  ];

  @override
  Widget build(BuildContext context) {
    return Consumer<LoginProvider>(
      builder: (_, model, __) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              SizedBox(
                height: 35,
                child: ListView.builder(
                  itemCount: 3,
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemBuilder: (_, index) {
                    return ElevatedButton(
                      onPressed: () => model.updateIndex = index,
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size(140, 35),
                        side: BorderSide(
                          color: (model.getIndex == index)
                              ? Colors.transparent
                              : const Color(0xFF81E6D9),
                        ),
                        backgroundColor: (model.getIndex == index)
                            ? const Color(0xFF81E6D9)
                            : Colors.white,
                      ),
                      child: Text(
                        titles[index],
                        style: TextStyle(
                          fontFamily: 'Lato',
                          fontSize: 12,
                          color: (model.getIndex == index)
                              ? Colors.white
                              : const Color(0xFF319795),
                        ),
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(height: 20),
              Text(
                (model.getIndex == 0)
                    ? details[0]
                    : (model.getIndex == 1)
                        ? details[2]
                        : details[4],
                style: const TextStyle(
                  color: Color(0xFF4A5568),
                  fontFamily: 'Lato',
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              Text(
                (model.getIndex == 0)
                    ? details[1]
                    : (model.getIndex == 1)
                        ? details[3]
                        : details[5],
                style: const TextStyle(
                  color: Color(0xFF4A5568),
                  fontFamily: 'Lato',
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
