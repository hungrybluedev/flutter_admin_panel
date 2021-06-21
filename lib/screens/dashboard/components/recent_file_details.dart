import 'package:admin_panel/constants.dart';
import 'package:admin_panel/models/RecentFile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RecentFileDetails extends StatelessWidget {
  const RecentFileDetails({
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
            "Recent Files",
            style: Theme.of(context).textTheme.headline6?.copyWith(
                  fontWeight: FontWeight.w500,
                ),
          ),
          SizedBox(
            width: double.infinity,
            child: DataTable(
              columnSpacing: defaultPadding,
              horizontalMargin: 0.0,
              columns: [
                DataColumn(label: Text("File Name")),
                DataColumn(label: Text("Date")),
                DataColumn(label: Text("Size")),
              ],
              rows: List<DataRow>.generate(
                demoRecentFiles.length,
                (index) => dataRowForRecentFile(demoRecentFiles[index]),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

DataRow dataRowForRecentFile(RecentFile demoRecentFile) {
  return DataRow(
    cells: [
      DataCell(
        Row(
          children: [
            SvgPicture.asset(demoRecentFile.icon),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: defaultPadding,
              ),
              child: Text(demoRecentFile.title),
            ),
          ],
        ),
      ),
      DataCell(Text(demoRecentFile.date)),
      DataCell(Text(demoRecentFile.size)),
    ],
  );
}
