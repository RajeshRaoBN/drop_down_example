import 'package:collection/collection.dart';
import 'package:drop_down_example/sex_menu.dart';
import 'package:flutter/material.dart';

// Flutter code sample for [DropdownMenu]s. The first dropdown menu
// has the default outlined border and demos using the
// [DropdownMenuEntry] style parameter to customize its appearance.
// The second dropdown menu customizes the appearance of the dropdown
// menu's text field with its [InputDecorationTheme] parameter.

void main() {
  runApp(DropdownMenuExample());
}

// DropdownMenuEntry labels and values for the second dropdown menu.

class DropdownMenuExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.green,
      ),
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SexMenu(),
                    const SizedBox(width: 24),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
