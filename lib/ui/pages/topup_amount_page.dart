import 'package:ewallet/shared/theme.dart';
import 'package:ewallet/ui/widgets/buttons.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:intl/intl.dart';

class TopupAmountPage extends StatefulWidget {
  const TopupAmountPage({super.key});

  @override
  State<TopupAmountPage> createState() => _TopupAmountPageState();
}

class _TopupAmountPageState extends State<TopupAmountPage> {
  final TextEditingController amountController =
      TextEditingController(text: '0');

  @override
  void initState() {
    super.initState();

    amountController.addListener(() {
      final text = amountController.text;

      if (text.isNotEmpty) {
        amountController.value = amountController.value.copyWith(
            text: NumberFormat.currency(
          locale: 'id',
          decimalDigits: 0,
          symbol: '',
        ).format(int.parse(text.replaceAll('.', ''))));
      }

      print(text);
    });
  }

  addAmount(String number) {
    if (amountController.text == '0') {
      setState(() {
        amountController.text = '';
      });
    }

    if (amountController.text.length < 13) {
      setState(() {
        amountController.text = amountController.text + number;
      });
    }
  }

  deleteAmount() {
    if (amountController.text.isNotEmpty) {
      setState(() {
        amountController.text = amountController.text
            .substring(0, amountController.text.length - 1);

        if (amountController.text == '') {
          amountController.text = '0';
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkBackgroundColor,
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 58,
        ),
        children: [
          const SizedBox(
            height: 36,
          ),
          Center(
            child: Text(
              'Total Amount',
              style: whiteTextStyle.copyWith(
                fontSize: 20,
                fontWeight: semiBold,
              ),
            ),
          ),
          const SizedBox(
            height: 67,
          ),
          Align(
            child: SizedBox(
              width: 200,
              child: TextFormField(
                controller: amountController,
                cursorColor: greyColor,
                enabled: false,
                style: whiteTextStyle.copyWith(
                  fontSize: 36,
                  fontWeight: medium,
                ),
                decoration: InputDecoration(
                  disabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: greyColor,
                    ),
                  ),
                  prefixIcon: Text(
                    'Rp ',
                    style: whiteTextStyle.copyWith(
                      fontSize: 36,
                      fontWeight: medium,
                    ),
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
                    addAmount('1');
                  },
                ),
                CustomNumberPinButton(
                  title: '2',
                  onTap: () {
                    addAmount('2');
                  },
                ),
                CustomNumberPinButton(
                  title: '3',
                  onTap: () {
                    addAmount('3');
                  },
                ),
                CustomNumberPinButton(
                  title: '4',
                  onTap: () {
                    addAmount('4');
                  },
                ),
                CustomNumberPinButton(
                  title: '5',
                  onTap: () {
                    addAmount('5');
                  },
                ),
                CustomNumberPinButton(
                  title: '6',
                  onTap: () {
                    addAmount('6');
                  },
                ),
                CustomNumberPinButton(
                  title: '7',
                  onTap: () {
                    addAmount('7');
                  },
                ),
                CustomNumberPinButton(
                  title: '8',
                  onTap: () {
                    addAmount('8');
                  },
                ),
                CustomNumberPinButton(
                  title: '9',
                  onTap: () {
                    addAmount('9');
                  },
                ),
                const SizedBox(
                  height: 60,
                  width: 60,
                ),
                CustomNumberPinButton(
                  title: '0',
                  onTap: () {
                    addAmount('0');
                  },
                ),
                CustomNumberPinButton(
                  title: '',
                  onTap: () {
                    deleteAmount();
                  },
                  isBackIcon: true,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          CustomFilledButton(
            title: 'Checkout Now',
            onPressed: () async {
              if (await Navigator.pushNamed(context, '/pin') == true) {
                await launchUrlString('https://demo.midtrans.com/');

                if (context.mounted) {
                  Navigator.pushNamedAndRemoveUntil(
                    context,
                    '/topup-success',
                    (route) => false,
                  );
                }
              }
            },
          ),
          const SizedBox(
            height: 25,
          ),
          CustomTextButton(
            title: 'Terms & Conditions',
            onPressed: () {},
          ),
          const SizedBox(
            height: 40,
          ),
        ],
      ),
    );
  }
}
