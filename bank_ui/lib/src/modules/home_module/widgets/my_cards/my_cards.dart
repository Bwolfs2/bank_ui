import 'package:flutter/material.dart';
import 'package:safe_box_design_system/safe_box_design_system.dart';

class MyCards extends StatefulWidget {
  const MyCards({Key? key}) : super(key: key);

  @override
  _MyCardsState createState() => _MyCardsState();
}

class _MyCardsState extends State<MyCards> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: const [
              SessionTitle(title: 'My', subtitle: 'Cards'),
              Spacer(),
              ProfileImage(
                profileUrl: 'https://picsum.photos/200/300',
                notificationCount: '2',
              )
            ],
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width,
          height: 200,
          child: ListView(
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: AddButton(
                    onTap: () {
                      print('Casa');
                    },
                    backgroundColor: berylGreen,
                  ),
                ),
              ),
              ...List.generate(
                10,
                (index) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: MyCard(
                    backgroundColor: Colors.accents[index],
                    isSelected: index == 0,
                    logoUrl: 'https://logosmarcas.net/wp-content/uploads/2020/09/MasterCard-Logo-1996-2016.png',
                    cardNumber: '*** 199$index',
                    cardTitle: 'Gold Card',
                    cardValue: '\$ ${((index + 1) * 999.9).toStringAsFixed(2)}',
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
