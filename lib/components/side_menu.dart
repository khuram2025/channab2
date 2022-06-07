import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          children: [
            DrawerHeader(child: SvgPicture.asset("assets/icons/logo.svg")),
            DrawerListTile(title: 'Dashboard', press: () { }, svgSrc: 'assets/icons/pos.svg',),
            DrawerListTile(title: 'Inventory', press: () { }, svgSrc: 'assets/icons/pos.svg',),
            DrawerListTile(title: 'Vendor', press: () { }, svgSrc: 'assets/icons/pos.svg',),
            DrawerListTile(title: 'Order', press: () { }, svgSrc: 'assets/icons/pos.svg',),
            DrawerListTile(title: 'HR', press: () { }, svgSrc: 'assets/icons/pos.svg',),
            DrawerListTile(title: 'Stock', press: () { }, svgSrc: 'assets/icons/pos.svg',),
            DrawerListTile(title: 'Reports', press: () { }, svgSrc: 'assets/icons/pos.svg',),

          ],
        ),
      ),
    );
  }
}

class DrawerListTile extends StatelessWidget {
  const DrawerListTile({

    Key? key,
    required this.press,
    required this.title,
    required this.svgSrc,
  }) : super(key: key);
  final VoidCallback press;
  final String title, svgSrc;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: press,
      horizontalTitleGap: 0.0,
      leading: SvgPicture.asset(svgSrc, color: Colors.green, height: 16, width: 50,),
      title: Text(title, ),
    );
  }
}

