import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PubDevv extends StatelessWidget {
  const PubDevv({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Pub  dev packages')),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(FontAwesomeIcons.searchengin),
            ),
            Icon(FontAwesomeIcons.arrowDown),
            Icon(FontAwesomeIcons.addressCard),
          ],
        ),
      ),
    );
  }
}
