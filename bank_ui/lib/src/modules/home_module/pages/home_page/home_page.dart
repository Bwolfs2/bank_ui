import 'package:bank_ui/src/modules/home_module/widgets/my_cards/my_cards.dart';
import 'package:bank_ui/src/modules/home_module/widgets/my_contacts/my_contacts.dart';
import 'package:bank_ui/src/modules/home_module/widgets/send_money/send_money.dart';
import 'package:flutter/material.dart';
import 'package:safe_box_design_system/safe_box_design_system.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: cararra,
      bottomNavigationBar: SafeBoxBottomBar(
        onChangeSelected: (index) {
          print(index);
        },
        itens: const [
          BottomBarItem(icon: Icons.home_outlined, text: 'Home'),
          BottomBarItem(icon: Icons.account_balance_wallet_outlined, text: 'Wallet'),
          BottomBarItem(icon: Icons.bar_chart_outlined, text: 'Chart'),
          BottomBarItem(icon: Icons.settings, text: 'Config'),
        ],
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: const [
            SizedBox(height: 50),
            MyCards(),
            SizedBox(height: 20),
            MyContacts(),
            SizedBox(height: 20),
            SendMoney(),
          ],
        ),
      ),
    );
  }
}
