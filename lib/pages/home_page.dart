import 'package:clase3/preferences/Prefrerences.dart';
import 'package:clase3/util/constants.dart';
import 'package:clase3/widgets/widgets.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {

  static const String routerName = 'home';

  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: AppbarComponent(height: Constants.heightAppBar),
      drawer: DrawerComponent(),
      body: _HomeComponent(),
    );
  }
}

class _HomeComponent extends StatelessWidget {
  const _HomeComponent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Tema oscuro: ${Preferences.isDarkMode}'),
        Divider(),
        Text('Género: ${Preferences.gender}'),
        Divider(),
        Text('Usuario: ${Preferences.user}'),
        Divider(),
      ],
    );
  }
}
