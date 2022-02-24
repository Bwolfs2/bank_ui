import 'package:flutter/material.dart';
import 'package:safe_box_design_system/safe_box_design_system.dart';

class MyContacts extends StatefulWidget {
  const MyContacts({Key? key}) : super(key: key);

  @override
  _MyContactsState createState() => _MyContactsState();
}

class _MyContactsState extends State<MyContacts> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: const [
              SessionTitle(title: 'My', subtitle: 'Contacts'),
              Spacer(),
              Text(
                'All Contacts',
                style: TextStyle(color: Colors.redAccent),
              )
            ],
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width,
          height: 100,
          child: ListView(
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: AddButton.mini(
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
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: const [
                      ContactImage(
                        urlImg: 'https://picsum.photos/200/300',
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Text('Bwolf')
                    ],
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
