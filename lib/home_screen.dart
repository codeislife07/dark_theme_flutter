import 'package:e_learner_app_flutter/app_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  List<ThemeMode> modes=[
    ThemeMode.system,
    ThemeMode.light,
    ThemeMode.dark,
  ];

  List<String> modesName=[
    "System",
    "Light",
    "Dark",
  ];

  var selected=0;

  @override
  Widget build(BuildContext context) {
    var provider=Provider.of<AppProvider>(context);
    return Scaffold(
    appBar: AppBar(title: Text("Light and Dark Theme demo"),),
      body: Column(
        children: [
          Text("Change Theme"),
          Column(
            children: List.generate(3, (index) =>
            Row(
              children: [
                Radio(value: index, groupValue: selected, onChanged: (themeIndex){
                  selected=index;
                  provider.changeMode(modes[index]);
                  setState(() {
                  });
                }),
                Text(modesName[index])
              ],
            )
            ),
          )
        ],
      ),
    );
  }
}
