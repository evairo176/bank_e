import 'package:ewallet/shared/theme.dart';
import 'package:ewallet/ui/widgets/data_package_item.dart';
import 'package:ewallet/ui/widgets/forms.dart';
import 'package:flutter/material.dart';

class DataPackagePage extends StatelessWidget {
  const DataPackagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Paket Data'),
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
            'Phone Number',
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          const CustomFormField(
            title: '+628',
            isShowTitle: false,
          ),
          buildResultUser(),
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
                DataPackageItem(
                  amount: 10,
                  price: 218000,
                  isSelected: true,
                ),
                DataPackageItem(
                  amount: 25,
                  price: 420000,
                  isSelected: false,
                ),
                DataPackageItem(
                  amount: 40,
                  price: 2500000,
                  isSelected: false,
                ),
                DataPackageItem(
                  amount: 99,
                  price: 5000000,
                  isSelected: false,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
