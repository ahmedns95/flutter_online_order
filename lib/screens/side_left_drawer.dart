import 'package:flutter/material.dart';
import 'package:drawerbehavior/drawerbehavior.dart';

class SideLeftDrawer extends StatelessWidget {
  const SideLeftDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DrawerScaffold(
      appBar: AppBar(
          title: Text("Drawer - Scale"),
          actions: [IconButton(icon: Icon(Icons.add), onPressed: () {})]),
      drawers: [
        SideDrawer(
          percentage: 0.6,
          direction: Direction.left,
          animation: true,
          color: Theme.of(context).primaryColor,
        )
      ],
    );
  }
}
