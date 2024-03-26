import 'package:ewallet/shared/theme.dart';
import 'package:ewallet/ui/widgets/buttons.dart';
import 'package:flutter/material.dart';

class PinPage extends StatefulWidget {
  const PinPage({super.key});

  @override
  State<PinPage> createState() => _PinPageState();
}

class _PinPageState extends State<PinPage> {
  final TextEditingController pinController = TextEditingController(text: '');

  addPin(String number) {
    if (pinController.text.length < 6) {
      setState(() {
        pinController.text = pinController.text + number;
      });
    }
  }

  deletePin() {
    if (pinController.text.isNotEmpty) {
      setState(() {
        pinController.text =
            pinController.text.substring(0, pinController.text.length - 1);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkBackgroundColor,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 58,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Sha PIN',
                style: whiteTextStyle.copyWith(
                  fontSize: 20,
                  fontWeight: semiBold,
                ),
              ),
              const SizedBox(
                height: 72,
              ),
              SizedBox(
                width: 200,
                child: TextFormField(
                  controller: pinController,
                  obscureText: true,
                  obscuringCharacter: '*',
                  cursorColor: greyColor,
                  enabled: false,
                  style: whiteTextStyle.copyWith(
                    fontSize: 36,
                    fontWeight: medium,
                    letterSpacing: 16,
                  ),
                  decoration: InputDecoration(
                    disabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: greyColor,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 66,
              ),
              SizedBox(
                width: double.infinity,
                child: Wrap(
                  alignment: WrapAlignment.spaceAround,
                  runAlignment: WrapAlignment.spaceAround,
                  spacing: 40,
                  runSpacing: 40,
                  children: [
                    CustomNumberPinButton(
                      title: '1',
                      onTap: () {
                        addPin('1');
                      },
                    ),
                    CustomNumberPinButton(
                      title: '2',
                      onTap: () {
                        addPin('2');
                      },
                    ),
                    CustomNumberPinButton(
                      title: '3',
                      onTap: () {
                        addPin('3');
                      },
                    ),
                    CustomNumberPinButton(
                      title: '4',
                      onTap: () {
                        addPin('4');
                      },
                    ),
                    CustomNumberPinButton(
                      title: '5',
                      onTap: () {
                        addPin('5');
                      },
                    ),
                    CustomNumberPinButton(
                      title: '6',
                      onTap: () {
                        addPin('6');
                      },
                    ),
                    CustomNumberPinButton(
                      title: '7',
                      onTap: () {
                        addPin('7');
                      },
                    ),
                    CustomNumberPinButton(
                      title: '8',
                      onTap: () {
                        addPin('8');
                      },
                    ),
                    CustomNumberPinButton(
                      title: '9',
                      onTap: () {
                        addPin('9');
                      },
                    ),
                    const SizedBox(
                      height: 60,
                      width: 60,
                    ),
                    CustomNumberPinButton(
                      title: '0',
                      onTap: () {
                        addPin('0');
                      },
                    ),
                    CustomNumberPinButton(
                      title: '',
                      onTap: () {
                        deletePin();
                      },
                      isBackIcon: true,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
