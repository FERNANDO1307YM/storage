import 'package:clase3/preferences/Prefrerences.dart';
import 'package:clase3/providers/theme_provider.dart';
import 'package:clase3/util/constants.dart';
import 'package:clase3/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SettingsPage extends StatelessWidget {

  static const String routerName = 'settings';

  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppbarComponent(height: Constants.heightAppBar),
      drawer: const DrawerComponent(),
      body: _SettingsComponent(),
    );
  }
}

class _SettingsComponent extends StatefulWidget {

  _SettingsComponent({
    Key? key,
  }) : super(key: key);

  @override
  State<_SettingsComponent> createState() => _SettingsComponentState();
}

class _SettingsComponentState extends State<_SettingsComponent> {

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Ajustes'),
          Divider(),
          SwitchListTile.adaptive(
            value: Preferences.isDarkMode,
            title: Text('Modo oscuro'),
            onChanged: (value) {
              final themeProvider = Provider.of<ThemeProvider>(context, listen: false);
              setState(() {
                value ? themeProvider.setDarkMode() : themeProvider.setLightMode();
                Preferences.isDarkMode = value;
              });
            },
          ),
          Divider(),
          RadioListTile<int>(
            value: 0,
            title: Text('Masculino'),
            groupValue: Preferences.gender,
            onChanged: (value) {
              setState(() {
                Preferences.gender = value!;
              });
            },
          ),
          RadioListTile<int>(
            value: 1,
            title: Text('Femenino'),
            groupValue: Preferences.gender,
            onChanged: (value) {
              setState(() {
                Preferences.gender = value!;
              });
            },
          ),
          TextFormField(
            keyboardType: TextInputType.name,
            initialValue: Preferences.user,
            textCapitalization: TextCapitalization.words,
            onChanged: (value) {
              setState(() {
                Preferences.user = value;
              });
            },
          )
        ],
      ),
    );
  }
}
