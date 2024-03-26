import 'package:ewallet/shared/theme.dart';
import 'package:ewallet/ui/widgets/buttons.dart';
import 'package:flutter/material.dart';

class SignUpSetIdCardPage extends StatelessWidget {
  const SignUpSetIdCardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            'Verify Your\nAccount',
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
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 120,
                  width: 120,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: lightBackgroundColor,
                  ),
                  child: Center(
                    child: Image.asset(
                      'assets/ic_upload.png',
                      width: 32,
                    ),
                  ),
                ),
                // Container(
                //   height: 120,
                //   width: 120,
                //   decoration: const BoxDecoration(
                //     shape: BoxShape.circle,
                //     image: DecorationImage(
                //       fit: BoxFit.cover,
                //       image: AssetImage('assets/image_profile.png'),
                //     ),
                //   ),
                // ),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  'Passport/ID Card',
                  style: blackTextStyle.copyWith(
                    fontSize: 18,
                    fontWeight: medium,
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                CostumFilledButton(
                  title: 'Continue',
                  width: double.infinity,
                  height: 50,
                  onPressed: () {
                    Navigator.pushNamed(context, '/sign-up-success');
                  },
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 60,
          ),
          CostumTextButton(
            title: 'Skip for Now',
            width: double.infinity,
            height: 24,
            onPressed: () {
              Navigator.pushNamed(context, '/sign-up-success');
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
