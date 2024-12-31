import 'dart:collection';

import 'package:flutter/material.dart';

class SexMenu extends StatefulWidget {
  const SexMenu({super.key});

  @override
  State<SexMenu> createState() => _SexMenuState();
}

typedef ColorEntry = DropdownMenuEntry<ColorLabel>;

// DropdownMenuEntry labels and values for the first dropdown menu.
enum ColorLabel {
  blue('Male', Colors.blue),
  pink('Female', Colors.pink),
  green('Trans', Colors.green),
  yellow('BiSexual', Colors.orange),
  grey('Grey', Colors.grey);

  const ColorLabel(this.label, this.color);
  final String label;
  final Color color;

  static final List<ColorEntry> entries = UnmodifiableListView<ColorEntry>(
    values.map<ColorEntry>(
      (ColorLabel color) => ColorEntry(
        value: color,
        label: color.label,
        enabled: color.label != 'Grey',
        style: MenuItemButton.styleFrom(
          foregroundColor: color.color,
        ),
      ),
    ),
  );
}

class _SexMenuState extends State<SexMenu> {
    final TextEditingController colorController = TextEditingController();
    ColorLabel? selectedColor;

  @override
  Widget build(BuildContext context) {
    return DropdownMenu<ColorLabel>(
      initialSelection: ColorLabel.green,
      controller: colorController,
      // requestFocusOnTap is enabled/disabled by platforms when it is null.
      // On mobile platforms, this is false by default. Setting this to true will
      // trigger focus request on the text field and virtual keyboard will appear
      // afterward. On desktop platforms however, this defaults to true.
      requestFocusOnTap: true,
      label: const Text('Sex'),
      onSelected: (ColorLabel? color) {
        setState(() {
          selectedColor = color;
        });
      },
      dropdownMenuEntries: ColorLabel.entries,
    );
  }
}