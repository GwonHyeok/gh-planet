import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_framework/responsive_framework.dart';

class HomeContactView extends StatelessWidget {
  const HomeContactView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 640,
      color: Colors.blueAccent,
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Let’s start your project with us',
            style: GoogleFonts.notoSans(
              textStyle: Theme.of(context).textTheme.headlineLarge,
              color: Colors.white,
            ),
          ),
          Card(
            margin: const EdgeInsets.all(32),
            child: ResponsiveRowColumn(
              layout: ResponsiveRowColumnType.ROW,
              rowPadding: const EdgeInsets.all(16),
              columnPadding: const EdgeInsets.all(16),
              children: [
                ResponsiveRowColumnItem(
                  rowFlex: 1,
                  child: ResponsiveRowColumn(
                    layout: ResponsiveRowColumnType.COLUMN,
                    children: [
                      ResponsiveRowColumnItem(
                        child: Column(
                          children: [
                            TextFormField(),
                            TextFormField(),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                ResponsiveRowColumnItem(
                  rowFlex: 1,
                  child: Container(
                    color: Colors.blue,
                    height: 100,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
