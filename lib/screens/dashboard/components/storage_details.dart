import 'package:admin_panel/constants.dart';
import 'package:flutter/material.dart';

import 'chart.dart';
import 'storage_info_card.dart';

class StorageDetails extends StatelessWidget {
  const StorageDetails({
    Key? key,
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
        children: [
          Text(
            "Storage Details",
            style: Theme.of(context).textTheme.headline6?.copyWith(
                  fontWeight: FontWeight.w500,
                ),
          ),
          SizedBox(
            height: defaultPadding,
          ),
          Chart(),
          SizedBox(
            height: defaultPadding,
          ),
          StorageInfoCard(
            title: "Documents",
            iconName: "Documents",
            fileCount: 1329,
            storageConsumed: "1.3 GB",
          ),
          StorageInfoCard(
            title: "Media",
            iconName: "media",
            fileCount: 1201,
            storageConsumed: "35.3 GB",
          ),
          StorageInfoCard(
            title: "Other",
            iconName: "folder",
            fileCount: 10414,
            storageConsumed: "23.4 GB",
          ),
          StorageInfoCard(
            title: "Unknown",
            iconName: "unknown",
            fileCount: 213,
            storageConsumed: "1.1 GB",
          ),
        ],
      ),
    );
  }
}
