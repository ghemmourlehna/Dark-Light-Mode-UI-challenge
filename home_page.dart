import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'theme_provider.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Theme Switch"),
        actions: [
          IconButton(
            icon: Icon(Icons.brightness_6),
            onPressed: () {
              themeProvider.toggleTheme();
            },
          ),
        ],
      ),
      body: Center(
        child: Text(
          "Mode ${themeProvider.currentTheme.brightness == Brightness.dark ? "Sombre" : "Clair"}",
          style: Theme.of(context).textTheme.bodyText1,
        ),
      ),
    );
  }
}
