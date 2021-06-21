import 'package:admin_panel/constants.dart';
import 'package:admin_panel/models/DemoFiles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FileInfoCard extends StatelessWidget {
  final CloudStorageInfo demoFile;

  const FileInfoCard({
    Key? key,
    required this.demoFile,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(defaultPadding),
        decoration: BoxDecoration(
          color: secondaryColor,
          borderRadius: BorderRadius.circular(defaultBorderRadius),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 40.0,
                  width: 40.0,
                  padding: const EdgeInsets.all(defaultPadding / 2.0),
                  decoration: BoxDecoration(
                    color: demoFile.color.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(defaultBorderRadius),
                  ),
                  child: SvgPicture.asset(
                    demoFile.svgSource,
                    color: demoFile.color,
                  ),
                ),
                Icon(
                  Icons.more_vert,
                  color: Colors.white54,
                ),
              ],
            ),
            Text(
              demoFile.title,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context).textTheme.subtitle1?.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
              textAlign: TextAlign.left,
            ),
            HorizontalProgressBar(
              color: demoFile.color,
              percentage: demoFile.percentage,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "${demoFile.fileCount} Files",
                  style: Theme.of(context)
                      .textTheme
                      .caption
                      ?.copyWith(color: Colors.white70),
                ),
                Text(
                  demoFile.totalStorage,
                  style: Theme.of(context)
                      .textTheme
                      .caption
                      ?.copyWith(color: Colors.white),
                ),
              ],
            ),
          ],
        ));
  }
}

class HorizontalProgressBar extends StatelessWidget {
  const HorizontalProgressBar({
    Key? key,
    this.color = primaryColor,
    required this.percentage,
  }) : super(key: key);

  final Color color;
  final double percentage;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 5,
          width: double.infinity,
          decoration: BoxDecoration(
            color: color.withOpacity(0.1),
            borderRadius: BorderRadius.circular(defaultBorderRadius),
          ),
        ),
        LayoutBuilder(
          builder: (context, constraints) => Container(
            height: 5,
            width: constraints.maxWidth * (percentage / 100.0),
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(defaultBorderRadius),
            ),
          ),
        ),
      ],
    );
  }
}
