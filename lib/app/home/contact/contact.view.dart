import 'package:flutter/material.dart';
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
                  '문의하기',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                const SizedBox(height: 8),
                Text(
                  '제작하고 싶은 서비스에 대해 문의해주세요.\n자유롭게 입력해주시면 이른 시일 내에 답변드리겠습니다.',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                const SizedBox(height: 24),
                TextFormField(
                  decoration: const InputDecoration(
                    hintText: 'xxxxxx@xxxxx.xxx',
                    prefixIcon: Icon(Icons.email_rounded),
                    labelText: '이메일',
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    border: OutlineInputBorder(),
                  ),
                  keyboardType: TextInputType.emailAddress,
                  inputFormatters: const [],
                  textInputAction: TextInputAction.next,
                ),
                const SizedBox(height: 16),
                TextFormField(
                  decoration: const InputDecoration(
                    hintText: 'xxx-xxxx-xxxx',
                    labelText: '연락처',
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    prefixIcon: Icon(Icons.phone_rounded),
                    border: OutlineInputBorder(),
                  ),
                  keyboardType: TextInputType.phone,
                  inputFormatters: const [],
                  textInputAction: TextInputAction.next,
                ),
                const SizedBox(height: 16),
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: '문의할 내용을 입력해주세요.',
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    border: OutlineInputBorder(),
                  ),
                  minLines: 4,
                  maxLines: 4,
                  keyboardType: TextInputType.multiline,
                ),
                const SizedBox(height: 24),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 24),
                  ),
                  child: const Text('문의하기'),
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
