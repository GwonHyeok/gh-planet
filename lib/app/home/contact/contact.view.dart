import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_framework/responsive_framework.dart';

class HomeContactView extends StatelessWidget {
  const HomeContactView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(32),
      child: ResponsiveRowColumn(
        layout: ResponsiveBreakpoints.of(context).largerThan(TABLET)
            ? ResponsiveRowColumnType.ROW
            : ResponsiveRowColumnType.COLUMN,
        rowPadding: const EdgeInsets.symmetric(
          horizontal: 32,
          vertical: 32,
        ),
        columnPadding: const EdgeInsets.symmetric(
          horizontal: 32,
          vertical: 32,
        ),
        rowSpacing: 24,
        columnSpacing: 56,
        children: [
          ResponsiveRowColumnItem(
            rowFit: FlexFit.loose,
            rowFlex: 1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  'Let’s talk',
                  style: GoogleFonts.notoSans(
                    textStyle: Theme.of(context).textTheme.headlineLarge,
                    color: Colors.purple,
                  ),
                ),
                Text(
                  'Let’s start your project with us' * 10,
                  style: GoogleFonts.notoSans(
                    textStyle: Theme.of(context).textTheme.bodySmall,
                  ),
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    hintText: '이메일',
                    prefixIcon: Icon(Icons.email_rounded),
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 8),
                TextFormField(
                  decoration: const InputDecoration(
                    hintText: '연락처',
                    prefixIcon: Icon(Icons.phone_rounded),
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 8),
                TextFormField(
                  decoration: const InputDecoration(
                    hintText: '문의할 내용을 입력해주세요.',
                    border: OutlineInputBorder(),
                  ),
                  minLines: 4,
                  maxLines: 4,
                ),
                const SizedBox(height: 8),
                TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    minimumSize: const Size(double.infinity, 64),
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.purple,
                  ),
                  child: const Text('Send Message'),
                ),
              ],
            ),
          ),
          ResponsiveRowColumnItem(
            rowFlex: 1,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const FlutterLogo(
                  size: 128,
                  style: FlutterLogoStyle.stacked,
                ),
                Table(
                  columnWidths: const {
                    0: FixedColumnWidth(48),
                  },
                  defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                  children: const [
                    TableRow(
                      children: [
                        Icon(Icons.email_rounded),
                        Text('me@ghyeok.io'),
                      ],
                    ),
                    TableRow(
                      children: [
                        Icon(Icons.link),
                        Text('https://github.com/GwonHyeok'),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
