import 'package:flutter/material.dart';

import 'beachday.dart';

class ExtraScreen extends StatefulWidget {
   final Beachdayitemmodel items;
  const ExtraScreen({super.key, required this.items});

  @override
  State<ExtraScreen> createState() => _ExtraScreenState();
}

class _ExtraScreenState extends State<ExtraScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.items.beachname),
      ),
    );
  }
}
