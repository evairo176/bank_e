import 'package:ewallet/shared/theme.dart';
import 'package:ewallet/ui/widgets/home_latest_tranasactions_item.dart';
import 'package:ewallet/ui/widgets/home_service_item.dart';
import 'package:ewallet/ui/widgets/home_tips_item.dart';
import 'package:ewallet/ui/widgets/home_user_item.dart';
import 'package:flutter/material.dart';
import 'package:scroll_to_hide/scroll_to_hide.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ScrollController _scrollController = ScrollController();

  @override
  void dispose() {
    super.dispose();
    _scrollController.dispose();
  }

// buttom navigation
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: ScrollToHide(
        scrollController: _scrollController,
        height: 70, // Initial height of the bottom navigation bar.
        hideDirection: Axis.vertical,
        duration: const Duration(milliseconds: 300),
        child: BottomAppBar(
          color: lightBackgroundColor,
          shape: const CircularNotchedRectangle(),
          clipBehavior: Clip.antiAlias,
          notchMargin: 8,
          padding: const EdgeInsets.all(0),
          elevation: 0,
          child: BottomNavigationBar(
            backgroundColor: whiteColor,
            type: BottomNavigationBarType.fixed,
            elevation: 0,
            selectedItemColor: blueColor,
            unselectedItemColor: blackColor,
            showSelectedLabels: true,
            showUnselectedLabels: true,
            selectedLabelStyle: blueTextStyle.copyWith(
              fontSize: 10,
              fontWeight: medium,
            ),
            unselectedLabelStyle: blackTextStyle.copyWith(
              fontSize: 10,
              fontWeight: medium,
            ),
            items: [
              BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/ic_overview.png',
                  width: 20,
                  color: blueColor,
                ),
                label: 'Overview',
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/ic_history.png',
                  width: 20,
                ),
                label: 'History',
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/ic_statistic.png',
                  width: 20,
                ),
                label: 'Statistic',
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/ic_reward.png',
                  width: 20,
                ),
                label: 'Reward',
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: ScrollToHide(
        scrollController: _scrollController,
        // height: 24,
        hideDirection: Axis.vertical,
        duration: const Duration(milliseconds: 300),
        child: FloatingActionButton(
          onPressed: () {},
          backgroundColor: purpleColor,
          shape: const CircleBorder(),
          child: Image.asset(
            'assets/ic_add.png',
            width: 24,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: ListView(
        controller: _scrollController,
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
        ),
        children: [
          buildProfile(context),
          buildWalletCard(),
          buildLevel(),
          buildService(context),
          buildLatesTransactions(),
          buildSendAgain(),
          buildFriendlyTips(),
        ],
      ),
    );
  }

  Widget buildProfile(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        top: 40,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Howdy,',
                style: greyTextStyle.copyWith(
                  fontSize: 16,
                ),
              ),
              const SizedBox(
                height: 2,
              ),
              Text(
                'shaynahan,',
                style: blackTextStyle.copyWith(
                  fontSize: 20,
                  fontWeight: semiBold,
                ),
              ),
            ],
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/profile');
            },
            child: Container(
              width: 60,
              height: 60,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage('assets/image_profile.png'),
                ),
              ),
              child: Align(
                alignment: Alignment.topRight,
                child: Container(
                  width: 16,
                  height: 16,
                  decoration:
                      BoxDecoration(shape: BoxShape.circle, color: whiteColor),
                  child: Center(
                    child: Icon(
                      Icons.check_circle,
                      color: greenColor,
                      size: 14,
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget buildWalletCard() {
    return Container(
      width: double.infinity,
      height: 220,
      margin: const EdgeInsets.only(
        top: 30,
      ),
      padding: const EdgeInsets.all(30),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(28),
        image: const DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage('assets/image_bg_card.png'),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Shayna Hanna',
            style: whiteTextStyle.copyWith(
              fontSize: 18,
              fontWeight: medium,
            ),
          ),
          const SizedBox(
            height: 28,
          ),
          Text(
            '**** **** **** 1288',
            style: whiteTextStyle.copyWith(
                fontSize: 18, fontWeight: medium, letterSpacing: 6),
          ),
          const SizedBox(
            height: 21,
          ),
          Text(
            'Balance',
            style: whiteTextStyle.copyWith(
              fontSize: 14,
            ),
          ),
          Text(
            'Rp 12.500',
            style: whiteTextStyle.copyWith(
              fontSize: 24,
              fontWeight: semiBold,
            ),
          )
        ],
      ),
    );
  }

  Widget buildLevel() {
    return Container(
      margin: const EdgeInsets.only(
        top: 20,
      ),
      padding: const EdgeInsets.all(22),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: whiteColor,
      ),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                'Level 1',
                style: blackTextStyle.copyWith(
                  fontSize: 14,
                  fontWeight: medium,
                ),
              ),
              const Spacer(),
              Text(
                '55%',
                style: greenTextStyle.copyWith(
                  fontSize: 14,
                  fontWeight: semiBold,
                ),
              ),
              Text(
                ' of Rp 20.000',
                style: blackTextStyle.copyWith(
                  fontSize: 14,
                  fontWeight: semiBold,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(55),
            child: LinearProgressIndicator(
              minHeight: 5,
              value: 0.55,
              valueColor: AlwaysStoppedAnimation(greenColor),
              backgroundColor: lightBackgroundColor,
            ),
          )
        ],
      ),
    );
  }

  Widget buildService(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        top: 30,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Do Something',
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              HomeServiceItem(
                iconUrl: 'assets/ic_topup.png',
                title: 'Top Up',
                onTap: () {
                  Navigator.pushNamed(context, '/topup');
                },
              ),
              HomeServiceItem(
                iconUrl: 'assets/ic_send.png',
                title: 'Send',
                onTap: () {
                  Navigator.pushNamed(context, '/transfer');
                },
              ),
              HomeServiceItem(
                iconUrl: 'assets/ic_withdraw.png',
                title: 'Withdraw',
                onTap: () {},
              ),
              HomeServiceItem(
                iconUrl: 'assets/ic_more.png',
                title: 'More',
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (context) => const MoreDialog(),
                  );
                },
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget buildLatesTransactions() {
    return Container(
      margin: const EdgeInsets.only(
        top: 30,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Latest Transactions',
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Container(
            padding: const EdgeInsets.all(22),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: whiteColor,
            ),
            child: const Column(
              children: [
                HomeLatestTransactionItem(
                  iconUrl: 'assets/ic_transaction_cat1.png',
                  title: 'Top Up',
                  date: 'Yesterday',
                  value: '+ 450.000',
                ),
                HomeLatestTransactionItem(
                  iconUrl: 'assets/ic_transaction_cat2.png',
                  title: 'Cashback',
                  date: 'Sep 11',
                  value: '+ 22.000',
                ),
                HomeLatestTransactionItem(
                  iconUrl: 'assets/ic_transaction_cat3.png',
                  title: 'Withdraw',
                  date: 'Sep 2',
                  value: '- 5.000',
                ),
                HomeLatestTransactionItem(
                  iconUrl: 'assets/ic_transaction_cat4.png',
                  title: 'Transfer',
                  date: 'Aug 27',
                  value: '- 123.500',
                ),
                HomeLatestTransactionItem(
                  iconUrl: 'assets/ic_transaction_cat5.png',
                  title: 'Electric',
                  date: 'Feb 18',
                  value: '- 12.300.000',
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget buildSendAgain() {
    return Container(
      margin: const EdgeInsets.only(
        top: 30,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Send Again',
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          const SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                HomeUserItem(
                  imageUrl: 'assets/image_friend1.png',
                  username: 'adinda77',
                ),
                HomeUserItem(
                  imageUrl: 'assets/image_friend2.png',
                  username: 'yunita002',
                ),
                HomeUserItem(
                  imageUrl: 'assets/image_friend3.png',
                  username: 'andre156',
                ),
                HomeUserItem(
                  imageUrl: 'assets/image_friend4.png',
                  username: 'keny886',
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget buildFriendlyTips() {
    return Container(
      margin: const EdgeInsets.only(top: 30, bottom: 50),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Friendly Tips',
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
              spacing: 28,
              runSpacing: 28,
              children: [
                HomeTipsItem(
                  imageUrl: 'assets/image_tips1.png',
                  title: 'Best tips for using a credit card',
                  url: 'https://www.google.co.id/?hl=id',
                ),
                HomeTipsItem(
                  imageUrl: 'assets/image_tips2.png',
                  title: 'Spot the good pie of finance model',
                  url: 'https://www.google.co.id/?hl=id',
                ),
                HomeTipsItem(
                  imageUrl: 'assets/image_tips3.png',
                  title: 'Great hack to get better advices',
                  url: 'https://www.google.co.id/?hl=id',
                ),
                HomeTipsItem(
                  imageUrl: 'assets/image_tips4.png',
                  title: 'Save more penny buy this instead',
                  url: 'https://www.google.co.id/?hl=id',
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class MoreDialog extends StatelessWidget {
  const MoreDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.transparent,
      insetPadding: EdgeInsets.zero,
      alignment: Alignment.bottomCenter,
      content: Container(
        height: 326,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          color: lightBackgroundColor,
        ),
        padding: const EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Do More With Us',
              style: blackTextStyle.copyWith(
                fontSize: 16,
                fontWeight: semiBold,
              ),
            ),
            const SizedBox(
              height: 13,
            ),
            SizedBox(
              width: double.infinity,
              child: Wrap(
                alignment: WrapAlignment.spaceBetween,
                runAlignment: WrapAlignment.spaceBetween,
                spacing: 30,
                runSpacing: 30,
                children: [
                  HomeServiceItem(
                    iconUrl: 'assets/ic_product_data.png',
                    title: 'Data',
                    onTap: () {
                      Navigator.pushNamed(context, '/data-provider');
                    },
                  ),
                  HomeServiceItem(
                    iconUrl: 'assets/ic_product_water.png',
                    title: 'Water',
                    onTap: () {},
                  ),
                  HomeServiceItem(
                    iconUrl: 'assets/ic_product_stream.png',
                    title: 'Stream',
                    onTap: () {},
                  ),
                  HomeServiceItem(
                    iconUrl: 'assets/ic_product_movie.png',
                    title: 'Movie',
                    onTap: () {},
                  ),
                  HomeServiceItem(
                    iconUrl: 'assets/ic_product_food.png',
                    title: 'Food',
                    onTap: () {},
                  ),
                  HomeServiceItem(
                    iconUrl: 'assets/ic_product_travel.png',
                    title: 'Travel',
                    onTap: () {},
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
