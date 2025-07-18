import 'package:flutter/material.dart';
//import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:readmore/readmore.dart';

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
              padding: const EdgeInsets.all(10),
              child: ReadMoreText(
                'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsu',
                textAlign: TextAlign.center,
                trimLines: 2,
                trimMode: TrimMode.Line,
                // trimLength: 50,
                trimExpandedText: "Read Less",
                trimCollapsedText: "Read All",
                moreStyle: TextStyle(color: Colors.deepOrange),
                style: TextStyle(color: Colors.cyanAccent),
                colorClickableText: Colors.amber,
              ),
            ),
            // Icon(FontAwesomeIcons.searchengin),
            // Icon(FontAwesomeIcons.arrowDown),
            // Icon(FontAwesomeIcons.addressCard),
          ],
        ),
      ),
    );
  }
}
