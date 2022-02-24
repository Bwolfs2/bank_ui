import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:safe_box_design_system/safe_box_design_system.dart';

class SendMoney extends StatefulWidget {
  const SendMoney({Key? key}) : super(key: key);

  @override
  _SendMoneyState createState() => _SendMoneyState();
}

class _SendMoneyState extends State<SendMoney> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      padding: const EdgeInsets.symmetric(vertical: 8),
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Row(
              children: const [
                SessionTitle(title: 'Send', subtitle: 'Money'),
                Spacer(),
                Text(
                  'Full History',
                  style: TextStyle(color: Colors.redAccent),
                )
              ],
            ),
          ),
        ),
        ...List.generate(
          10,
          (index) => Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const ContactImage(
                  urlImg: 'https://picsum.photos/200/300',
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Bwolf da Silva Sauro',
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Bwolf',
                        style: TextStyle(fontSize: 12, color: Color(0xff959595)),
                      ),
                    ],
                  ),
                ),
                const Align(
                  child: Text(
                    '+ 130\$',
                    style: TextStyle(color: Color(0xff7DA878)),
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
