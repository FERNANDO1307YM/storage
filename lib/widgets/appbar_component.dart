import 'package:flutter/material.dart';

class AppbarComponent extends StatelessWidget implements PreferredSizeWidget {

  final double height;

  const AppbarComponent({Key? key, required this.height}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text('Clase No. 3'),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height);
}
