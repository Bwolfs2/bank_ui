import 'package:flutter/material.dart';
import 'package:safe_box_design_system/safe_box_design_system.dart';

class SafeBoxBottomBar extends StatelessWidget {
  final List<BottomBarItem> itens;
  final void Function(int selectedIndex) onChangeSelected;
  const SafeBoxBottomBar({Key? key, required this.itens, required this.onChangeSelected}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final selectedItem = ValueNotifier(0);

    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(color: cararra, boxShadow: const [
        BoxShadow(
          color: Colors.black26,
          blurRadius: 2,
          offset: Offset(1, 1),
        ),
      ]),
      child: ValueListenableBuilder<int>(
        valueListenable: selectedItem,
        builder: (context, value, child) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: List.generate(
              itens.length,
              (index) => InkWell(
                onTap: () {
                  selectedItem.value = index;
                  onChangeSelected(index);
                  // print(StackTrace.current);
                },
                child: Theme(
                  data: ThemeData(primaryColor: value == index ? berylGreen : cararra),
                  child: itens[index],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
