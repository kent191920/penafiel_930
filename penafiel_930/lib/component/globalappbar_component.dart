import 'package:flutter/material.dart';

class GlobalAppBarComponent extends StatelessWidget
    implements PreferredSizeWidget {
  final Text? title;
  const GlobalAppBarComponent({Key? key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Color(0xff0c9292),
      title: title,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
