import 'package:e_learner_app_flutter/app_provider.dart';
import 'package:e_learner_app_flutter/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'common/theme/dark_theme.dart';
import 'common/theme/light_theme.dart';

void main() async{
  runApp(MultiProvider(
      providers: [
        ChangeNotifierProvider<AppProvider>(create: (_) => AppProvider()),
       ],
      child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var provider=Provider.of<AppProvider>(context);
    return MaterialApp(
      title: '',
      themeMode: provider.mode,
      debugShowCheckedModeBanner: false,
      theme: buildLightTheme("en",),
      darkTheme: buildDarkTheme("en",),
      home: HomeScreen(),
    );
  }
}
