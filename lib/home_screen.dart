import 'package:aba_bank/color.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<ItemModel> items = [
    ItemModel(
      text: 'Accounts',
      icon: Icons.wallet,
    ),
    ItemModel(
      text: 'Cards',
      icon: Icons.credit_card,
    ),
    ItemModel(
      text: 'Payments',
      icon: Icons.payment,
    ),
    ItemModel(
      text: 'Deposit',
      icon: Icons.mobile_screen_share_sharp,
    ),
    ItemModel(
      text: 'Cash to ATM',
      icon: Icons.cabin_sharp,
    ),
    ItemModel(
      text: 'Transfer',
      icon: Icons.transfer_within_a_station,
    ),
    ItemModel(
      text: 'Scan QR',
      icon: Icons.qr_code,
    ),
    ItemModel(
      text: 'Loan',
      icon: Icons.money_rounded,
    ),
    ItemModel(
      text: 'ABA Location',
      icon: Icons.my_location_sharp,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.5,
        backgroundColor: MyColors.secondary,
        leading: Icon(Icons.menu),
        title: Text("ABA Mobile"),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.notifications)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.phone_in_talk)),
        ],
      ),
      body: Column(
        children: [
          Expanded(
              flex: 3,
              child: Container(
                decoration: const BoxDecoration(
                    gradient: RadialGradient(
                  colors: [Colors.white, MyColors.primary],
                )),
                child: GridView.count(
                  crossAxisCount: 3,
                  crossAxisSpacing: 1.0,
                  mainAxisSpacing: 1.0,
                  children: items.map((e) {
                    return Container(
                      color: MyColors.primary,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(e.icon, size: 48, color: Colors.white),
                          const SizedBox(
                            height: 10.0,
                          ),
                          Text(e.text ?? "",
                              style: const TextStyle(
                                fontSize: 10.0,
                                color: Colors.white,
                              )),
                        ],
                      ),
                    );
                  }).toList(),
                ),
              )),
          Expanded(
              flex: 1,
              child: Container(
                color: MyColors.green,
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    Padding(padding: const EdgeInsets.only(left: 20,right: 150.0),child: Column(
                      mainAxisAlignment:MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text("Quick Transfer",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                            )),
                        SizedBox(height: 10.0,),
                        Text(
                            "Create your templates here to make transfer quicker",
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.white,
                            )),
                      ],
                    ),),
                    const Positioned(
                        bottom: -25.0,
                        right: -25.0,
                        child: Icon(
                          Icons.monetization_on,
                          size: 120,
                          color: Colors.white38
                        ))
                  ],
                ),
              )),
          Expanded(
              flex: 1,
              child: Container(
                color: MyColors.red,
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    Padding(padding: const EdgeInsets.only(left: 20,right: 150.0),child: Column(
                      mainAxisAlignment:MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text("Quick Payment",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                            )),
                        SizedBox(height: 10.0,),
                        Text(
                            "Paying your bills with templates is faster",
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.white,
                            )),
                      ],
                    ),),
                    const Positioned(
                        bottom: -25.0,
                        right: -25.0,
                        child: Icon(
                          Icons.monetization_on,
                          size: 120,
                          color: Colors.white38
                        ))
                  ],
                ),
              )),
        ],
      ),
    );
  }
}

class ItemModel {
  final IconData? icon;
  final String? text;

  ItemModel({this.icon, this.text});
}
