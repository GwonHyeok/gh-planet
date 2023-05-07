import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/app/shared/widget/footer.widget.dart';
import 'package:portfolio/app/shared/widget/header.widget.dart';
import 'package:responsive_framework/responsive_framework.dart';

class WorkDetailPage extends StatelessWidget {
  const WorkDetailPage({Key? key}) : super(key: key);

  static GoRoute route = GoRoute(
    path: '/works/:id',
    builder: (context, state) {
      return const WorkDetailPage();
    },
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            const AppSliverHeader(expanded: false),
          ];
        },
        body: SingleChildScrollView(
          child: Column(
            children: [
              _buildDetailBody(),
              const Footer(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildDetailBody() {
    return Builder(builder: (context) {
      return MaxWidthBox(
        maxWidth: 840,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 64.0),
              child: Text(
                'Uber Mobile App',
                style: GoogleFonts.notoSans(
                  textStyle: Theme.of(context).textTheme.headlineLarge,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 64.0),
              child: ResponsiveRowColumn(
                rowMainAxisAlignment: MainAxisAlignment.spaceBetween,
                columnCrossAxisAlignment: CrossAxisAlignment.start,
                columnSpacing: 24,
                layout: ResponsiveBreakpoints.of(context).largerThan(TABLET)
                    ? ResponsiveRowColumnType.ROW
                    : ResponsiveRowColumnType.COLUMN,
                children: [
                  ResponsiveRowColumnItem(
                    child: _buildDetailSummaryItem(
                      title: 'Client',
                      body: 'Mesica Chouhan',
                    ),
                  ),
                  ResponsiveRowColumnItem(
                    child: _buildDetailSummaryItem(
                      title: 'Category',
                      body: 'Mobile App',
                    ),
                  ),
                  ResponsiveRowColumnItem(
                    child: _buildDetailSummaryItem(
                      title: 'Project Date',
                      body: 'March 20, 2020',
                    ),
                  ),
                  ResponsiveRowColumnItem(
                    child: OutlinedButton(
                      onPressed: () {},
                      child: const Text('Visit Website'),
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 32),
              child: AspectRatio(
                aspectRatio: 16 / 9,
                child: Image.network(
                  'https://picsum.photos/300/300',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            ResponsiveRowColumn(
              layout: ResponsiveBreakpoints.of(context).largerThan(TABLET)
                  ? ResponsiveRowColumnType.ROW
                  : ResponsiveRowColumnType.COLUMN,
              rowCrossAxisAlignment: CrossAxisAlignment.start,
              rowSpacing: 32,
              rowPadding: const EdgeInsets.symmetric(vertical: 32),
              columnPadding:
                  const EdgeInsets.symmetric(vertical: 32, horizontal: 32),
              columnSpacing: 8,
              children: [
                ResponsiveRowColumnItem(
                  rowFlex: 1,
                  child: Text(
                    'A wonderful serenity has taken to the possession of my entire soul network infrastructure, including consolidation of established network designed and created infrastructure. Voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.',
                    style: GoogleFonts.notoSans(
                      textStyle: Theme.of(context).textTheme.bodyLarge,
                      color: Colors.white,
                    ),
                  ),
                ),
                ResponsiveRowColumnItem(
                  rowFlex: 1,
                  child: Text(
                    'A wonderful serenity has taken to the possession of my entire soul network infrastructure, including consolidation of established network designed and created infrastructure.',
                    style: GoogleFonts.notoSans(
                      textStyle: Theme.of(context).textTheme.bodyLarge,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            ResponsiveRowColumn(
              layout: ResponsiveBreakpoints.of(context).largerThan(TABLET)
                  ? ResponsiveRowColumnType.ROW
                  : ResponsiveRowColumnType.COLUMN,
              rowCrossAxisAlignment: CrossAxisAlignment.start,
              rowSpacing: 8,
              rowPadding: const EdgeInsets.symmetric(vertical: 32),
              columnPadding: const EdgeInsets.symmetric(vertical: 32),
              children: [
                ResponsiveRowColumnItem(
                  rowFlex: 1,
                  child: AspectRatio(
                    aspectRatio: 1,
                    child: Image.network(
                      'https://picsum.photos/300/300',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                ResponsiveRowColumnItem(
                  rowFlex: 1,
                  child: AspectRatio(
                    aspectRatio: 1,
                    child: Image.network(
                      'https://picsum.photos/300/300',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    });
  }

  Widget _buildDetailSummaryItem({
    required String title,
    required String body,
  }) {
    return Builder(builder: (context) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: GoogleFonts.notoSans(
              textStyle: Theme.of(context).textTheme.labelLarge,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            body,
            style: GoogleFonts.notoSans(
              textStyle: Theme.of(context).textTheme.titleLarge,
            ),
          ),
        ],
      );
    });
  }
}
