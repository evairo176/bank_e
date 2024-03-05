import 'package:ewallet/shared/theme.dart';
import 'package:ewallet/ui/widgets/buttons.dart';
import 'package:ewallet/ui/widgets/forms.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightBackgroundColor,
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
          vertical: 24,
        ),
        children: [
          Container(
            width: 155,
            height: 50,
            margin: const EdgeInsets.only(top: 100),
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/image_logo_light.png'),
              ),
            ),
          ),
          const SizedBox(
            height: 100,
          ),
          Text(
            'Join Us to Unlock\nYour Growth',
            style: blackTextStyle.copyWith(fontSize: 20, fontWeight: semiBold),
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            padding: const EdgeInsets.all(22),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: whiteColor,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // NAME INPUT FORM
                const CostumFormField(title: 'Full Name'),
                const SizedBox(
                  height: 16,
                ),
                // EMAIL INPUT FORM
                const CostumFormField(title: 'Email Address'),
                const SizedBox(
                  height: 16,
                ),
                // PASSWORD INPUT FORM
                const CostumFormField(
                  title: 'Password',
                  obscureText: true,
                ),
                const SizedBox(
                  height: 30,
                ),
                CostumFilledButton(
                  title: 'Continue',
                  width: double.infinity,
                  height: 50,
                  onPressed: () {
                    Navigator.pushNamed(context, '/sign-up-set-profile');
                  },
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          CostumTextButton(
            title: 'Sign In',
            width: double.infinity,
            height: 24,
            onPressed: () {
              Navigator.pushNamed(context, '/sign-in');
            },
          ),
          const SizedBox(
            height: 81,
          ),
        ],
      ),
    );
  }
}
