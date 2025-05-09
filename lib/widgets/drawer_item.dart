import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/drawer_item_model.dart';
import 'package:responsive_dash_board/widgets/activa_and_inactive_drawer.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem(
      {super.key, required this.drawerItemModel, required this.isActive});

  final DrawerItemModel drawerItemModel;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return isActive == false
        ? InActiveItemDrawer(drawerItemModel: drawerItemModel)
        : ActiveDrawer(drawerItemModel: drawerItemModel);
  }
}

