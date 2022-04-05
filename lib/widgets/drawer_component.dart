import 'package:clase3/pages/home_page.dart';
import 'package:clase3/pages/pages.dart';
import 'package:flutter/material.dart';

class DrawerComponent extends StatelessWidget {
  const DrawerComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: const [
          _DrawerHeaderComponent(),
          _IconComponent(name: 'Home', icon: Icons.pages_outlined, routeName: HomePage.routerName),
          _IconComponent(name: 'Settings', icon: Icons.settings_outlined, routeName: SettingsPage.routerName),
        ],
      ),
    );
  }
}

class _IconComponent extends StatelessWidget {

  final String name;
  final IconData icon;
  final String routeName;

  const _IconComponent({
    Key? key, required this.name, required this.icon, required this.routeName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon (icon),
      title: Text(name),
      onTap: () {
        Navigator.pushNamed(context, routeName);
      },
    );
  }
}

class _DrawerHeaderComponent extends StatelessWidget {
  const _DrawerHeaderComponent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DrawerHeader(
      child: Container(),
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/img/menu-img.jpg'),
          fit: BoxFit.cover
        ),
      )
    );
  }
}
