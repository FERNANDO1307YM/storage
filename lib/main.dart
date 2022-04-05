import 'package:clase3/pages/pages.dart';
import 'package:clase3/preferences/Prefrerences.dart';
import 'package:clase3/providers/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Preferences.init();
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ThemeProvider(isDarkTheme: Preferences.isDarkMode))
      ],
      child: MyApp(),
    )
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      initialRoute: HomePage.routerName,
      routes: {
        HomePage.routerName :  ( _ ) => const HomePage(),
        SettingsPage.routerName :  ( _ ) => const SettingsPage(),
      },
      theme: Provider.of<ThemeProvider>(context).currentTheme
    );
  }
}
