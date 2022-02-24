import 'package:flutter/material.dart';

class AddButton extends StatelessWidget {
  final Color backgroundColor;
  final void Function() onTap;
  final double dimension;

  const AddButton.mini({Key? key, required this.backgroundColor, required this.onTap})
      : dimension = 36,
        super(key: key);

  const AddButton({Key? key, required this.backgroundColor, required this.onTap})
      : dimension = 64,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(8),
      color: backgroundColor,
      child: InkWell(
        borderRadius: BorderRadius.circular(8),
        onTap: onTap,
        child: SizedBox.square(
          dimension: dimension,
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
