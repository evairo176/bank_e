import 'package:ewallet/shared/theme.dart';
import 'package:ewallet/ui/widgets/buttons.dart';
import 'package:ewallet/ui/widgets/forms.dart';
import 'package:ewallet/ui/widgets/transfer_recent_user_item.dart';
import 'package:ewallet/ui/widgets/transfer_result_user_item.dart';
import 'package:flutter/material.dart';

class TransferPage extends StatelessWidget {
  const TransferPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Transfer',
        ),
        forceMaterialTransparency: true,
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
        ),
        children: [
          const SizedBox(
            height: 30,
          ),
          Text(
            'Search',
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          const CustomFormField(
            title: 'by username',
            isShowTitle: false,
          ),
          // buildRecentUser(),
          buildResultUser(),

          CustomFilledButton(
            title: 'Continue',
            onPressed: () {
              Navigator.pushNamed(context, '/transfer-amount');
            },
          ),
          const SizedBox(
            height: 50,
          ),
        ],
      ),
    );
  }

  Widget buildRecentUser() {
    return Container(
      margin: const EdgeInsets.only(
        top: 40,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Recent Users',
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          const TransferRecentUserItem(
            imageUrl: 'assets/image_friend1.png',
            name: 'Catrina',
            username: 'catrina992',
            isVerified: true,
          ),
          const TransferRecentUserItem(
            imageUrl: 'assets/image_friend2.png',
            name: 'Catrina',
            username: 'catrina992',
            isVerified: false,
          ),
          const TransferRecentUserItem(
            imageUrl: 'assets/image_friend3.png',
            name: 'Catrina',
            username: 'catrina992',
            isVerified: false,
          ),
        ],
      ),
    );
  }

  Widget buildResultUser() {
    return Container(
      margin: const EdgeInsets.only(
        top: 50,
        bottom: 50,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Result',
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          const SizedBox(
            width: double.infinity,
            child: Wrap(
              alignment: WrapAlignment.spaceAround,
              runAlignment: WrapAlignment.spaceAround,
              spacing: 27,
              runSpacing: 27,
              children: [
                TransferResultUserItem(
                  imageUrl: 'assets/image_friend2.png',
                  name: 'Catrina',
                  username: 'catrina992',
                  isVerified: true,
                  isSelected: true,
                ),
                TransferResultUserItem(
                  imageUrl: 'assets/image_friend2.png',
                  name: 'Catrina',
                  username: 'catrina992',
                  isVerified: false,
                ),
                TransferResultUserItem(
                  imageUrl: 'assets/image_friend2.png',
                  name: 'Catrina',
                  username: 'catrina992',
                  isVerified: false,
                ),
                TransferResultUserItem(
                  imageUrl: 'assets/image_friend2.png',
                  name: 'Catrina',
                  username: 'catrina992',
                  isVerified: false,
                ),
                TransferResultUserItem(
                  imageUrl: 'assets/image_friend2.png',
                  name: 'Catrina',
                  username: 'catrina992',
                  isVerified: false,
                ),
                TransferResultUserItem(
                  imageUrl: 'assets/image_friend2.png',
                  name: 'Catrina',
                  username: 'catrina992',
                  isVerified: false,
                ),
                TransferResultUserItem(
                  imageUrl: 'assets/image_friend2.png',
                  name: 'Catrina',
                  username: 'catrina992',
                  isVerified: false,
                ),
                TransferResultUserItem(
                  imageUrl: 'assets/image_friend2.png',
                  name: 'Catrina',
                  username: 'catrina992',
                  isVerified: false,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
