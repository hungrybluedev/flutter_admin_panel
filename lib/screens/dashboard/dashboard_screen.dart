import 'package:admin_panel/constants.dart';
import 'package:admin_panel/responsive.dart';
import 'package:flutter/material.dart';

import 'components/all_file_details.dart';
import 'components/header.dart';
import 'components/recent_file_details.dart';
import 'components/storage_details.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: EdgeInsets.all(defaultPadding),
        child: Column(
          children: [
            Header(),
            SizedBox(
              height: defaultPadding,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 5,
                  child: Column(
                    children: [
                      AllFileDetails(),
                      SizedBox(
                        height: defaultPadding,
                      ),
                      RecentFileDetails(),
                    ],
                  ),
                ),
                if (!ResponsiveWidget.isMobile(context))
                  SizedBox(
                    width: defaultPadding,
                  ),
                if (!ResponsiveWidget.isMobile(context))
                  Expanded(
                    flex: 2,
                    child: StorageDetails(),
                  ),
              ],
            ),
            if (ResponsiveWidget.isMobile(context))
              SizedBox(
                height: defaultPadding,
              ),
            if (ResponsiveWidget.isMobile(context)) StorageDetails(),
          ],
        ),
      ),
    );
  }
}
