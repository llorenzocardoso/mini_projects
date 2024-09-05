import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:themes/themes/theme_provider.dart';

class MyButton extends StatelessWidget {
  final Color color;
  final void Function()? onTap;

  const MyButton({super.key, required this.color, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Provider.of<ThemeProvider>(context, listen: false).toggleTheme();
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: color,
        ),
        padding: const EdgeInsets.all(25),
        child: const Center(
          child: Text('TAP'),
        ),
      ),
    );
  }
}
