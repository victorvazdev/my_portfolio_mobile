import 'package:flutter/material.dart';
import 'package:my_portfolio_mobile/constants.dart';
import 'package:my_portfolio_mobile/widgets/contact.dart';
import 'package:my_portfolio_mobile/widgets/personal_informations.dart';
import 'package:my_portfolio_mobile/widgets/personal_profile.dart';
import 'package:my_portfolio_mobile/widgets/stylized_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.silverBackground,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Header(),

              SizedBox(height: 16),

              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  // borderRadius: BorderRadius.circular(9),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withValues(alpha: 0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      PersonalProfile(),

                      Divider(
                        height: 0,
                        thickness: 0,
                        indent: 20,
                        endIndent: 20,
                        color: Constants.darkBackground,
                      ),
                      Contact(),
                    ],
                  ),
                ),
              ),

              Row(
                children: [
                  StylizedButton(function: () {}, text: 'Formação'),
                  SizedBox(width: 12),
                  StylizedButton(function: () {}, text: 'Certificados'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
