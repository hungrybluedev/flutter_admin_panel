import 'package:admin_panel/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class StorageInfoCard extends StatelessWidget {
  final String title;
  final String iconName;
  final String storageConsumed;
  final int fileCount;

  const StorageInfoCard({
    Key? key,
    required this.title,
    required this.iconName,
    required this.storageConsumed,
    required this.fileCount,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: defaultPadding / 2.0),
      padding: const EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        border: Border.all(
          width: 2.0,
          color: primaryColor.withOpacity(0.15),
        ),
        borderRadius: BorderRadius.circular(defaultBorderRadius),
      ),
      child: Row(
        children: [
          SizedBox(
            height: 20,
            width: 20,
            child: SvgPicture.asset(
              "assets/icons/$iconName.svg",
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: defaultPadding,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    "$fileCount files",
                    style: Theme.of(context).textTheme.caption?.copyWith(
                          color: Colors.white70,
                        ),
                  ),
                ],
              ),
            ),
          ),
          Text(storageConsumed),
        ],
      ),
    );
  }
}
