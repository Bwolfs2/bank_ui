import 'package:flutter/material.dart';
import 'package:safe_box_design_system/safe_box_design_system.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

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
      appBar: AppBar(title: const Text('Safe Box Design System')),
      body: ListView.builder(
          physics: const BouncingScrollPhysics(),
          itemCount: 100,
          itemBuilder: (context, index) => MyCard(
                backgroundColor: Colors.accents[(index / 10).truncate()],
                isSelected: index == 0,
                logoUrl: 'https://logosmarcas.net/wp-content/uploads/2020/09/MasterCard-Logo-1996-2016.png',
                cardNumber: '*** 199$index',
                cardTitle: 'Gold Card',
                cardValue: '\$ ${((index) * 999.9).toStringAsFixed(2)}',
              )),

      //  SizedBox(
      //   width: double.infinity,
      //   child: SingleChildScrollView(
      //     child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
      //       const SizedBox(height: 10),
      //       AddButton(
      //         onTap: () {
      //           print('Casa');
      //         },
      //         backgroundColor: berylGreen,
      //       ),
      //       const SizedBox(height: 10),
      //       AddButton.mini(
      //         onTap: () {
      //           print('Casa');
      //         },
      //         backgroundColor: berylGreen,
      //       ),
      //       const SizedBox(height: 10),
      //       const SessionTitle(
      //         title: 'My',
      //         subtitle: 'Cards',
      //       ),
      //       const SizedBox(height: 10),
      //       const ContactImage(
      //         urlImg: 'https://picsum.photos/200/300',
      //       ),
      //       const SizedBox(height: 10),
      //       const ProfileImage(
      //         profileUrl: 'https://picsum.photos/200/300',
      //         notificationCount: '2',
      //       ),
      //       const SizedBox(height: 10),
      //       SizedBox(
      //         height: MediaQuery.of(context).size.height * .25,
      //         child: ListView.separated(
      //           scrollDirection: Axis.horizontal,
      //           itemCount: 5,
      //           padding: const EdgeInsets.all(10),
      //           itemBuilder: (context, index) => MyCard(
      //             backgroundColor: Colors.accents[index],
      //             isSelected: index == 0,
      //             logoUrl: 'https://logosmarcas.net/wp-content/uploads/2020/09/MasterCard-Logo-1996-2016.png',
      //             cardNumber: '*** 199$index',
      //             cardTitle: 'Gold Card',
      //             cardValue: '\$ ${((index + 1) * 999.9).toStringAsFixed(2)}',
      //           ),
      //           separatorBuilder: (context, index) => const SizedBox(
      //             width: 10,
      //           ),
      //         ),
      //       ),
      //       ...List.generate(
      //           100,
      //           (index) => MyCard(
      //                 backgroundColor: Colors.accents[(index / 10).truncate()],
      //                 isSelected: index == 0,
      //                 logoUrl: 'https://logosmarcas.net/wp-content/uploads/2020/09/MasterCard-Logo-1996-2016.png',
      //                 cardNumber: '*** 199$index',
      //                 cardTitle: 'Gold Card',
      //                 cardValue: '\$ ${((index) * 999.9).toStringAsFixed(2)}',
      //               ))
      //     ]),
      //   ),
      // ),
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
    );
  }
}

class MyCustomImage extends StatefulWidget {
  final String imageUrl;
  const MyCustomImage({Key? key, required this.imageUrl}) : super(key: key);

  @override
  _MyCustomImageState createState() => _MyCustomImageState();
}

class _MyCustomImageState extends State<MyCustomImage> {
  @override
  void didChangeDependencies() {
    final theImage = Image.network(widget.imageUrl, fit: BoxFit.cover);
    precacheImage(theImage.image, context);
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Image.network(
      widget.imageUrl,
      height: 250,
    );
  }
}
