import 'package:admin_panel/constants.dart';
import 'package:admin_panel/models/DemoFiles.dart';
import 'package:admin_panel/responsive.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'file_info_card.dart';

class AllFileDetails extends StatelessWidget {
  const AllFileDetails({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "All Files",
              style: Theme.of(context).textTheme.headline6?.copyWith(
                    fontWeight: FontWeight.w500,
                  ),
            ),
            ElevatedButton.icon(
              style: TextButton.styleFrom(
                padding: EdgeInsets.symmetric(
                  horizontal: defaultPadding * 1.5,
                  vertical: defaultPadding /
                      (ResponsiveWidget.isMobile(context) ? 1.5 : 1.0),
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(defaultBorderRadius),
                ),
              ),
              onPressed: () {
                HapticFeedback.mediumImpact();
              },
              icon: Icon(Icons.add),
              label: Text("Add new"),
            ),
          ],
        ),
        SizedBox(
          height: defaultPadding,
        ),
        ResponsiveWidget(
          mobile: FileInfoCardGridView(
            crossAxisCount: ResponsiveWidget.cardGridCount(context),
            childAspectRatio: ResponsiveWidget.cardAspectRatio(context),
          ),
          tablet: FileInfoCardGridView(),
          desktop: FileInfoCardGridView(
            childAspectRatio: ResponsiveWidget.cardAspectRatio(context),
          ),
        ),
      ],
    );
  }
}

class FileInfoCardGridView extends StatelessWidget {
  final int crossAxisCount;
  final double childAspectRatio;
  const FileInfoCardGridView({
    Key? key,
    this.crossAxisCount = 4,
    this.childAspectRatio = 1.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: demoFileList.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        crossAxisSpacing: defaultPadding,
        mainAxisSpacing: defaultPadding,
        childAspectRatio: childAspectRatio,
      ),
      itemBuilder: (context, index) => FileInfoCard(
        demoFile: demoFileList[index],
      ),
    );
  }
}
