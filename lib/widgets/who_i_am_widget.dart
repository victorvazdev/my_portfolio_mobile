import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:victor_vaz_portfolio/constants.dart';

class WhoIAmWidget extends StatelessWidget {
  const WhoIAmWidget({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        kIsWeb && width > 600
            ? Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Image.asset(
                    'assets/images/victorvaz.jpg',
                    height: 128,
                  ),
                ),
              ],
            )
            : Column(
              children: [
                CircleAvatar(
                  radius: 64,
                  backgroundImage: AssetImage('assets/images/victorvaz.jpg'),
                ),

                SelectableText(
                  'Victor Vaz',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Constants.fontColor,
                  ),
                ),

                SelectableText(
                  'Software Developer',
                  style: TextStyle(
                    fontSize: 18,
                    color: Constants.secundaryFontColor,
                  ),
                ),
              ],
            ),
      ],
    );
  }
}
