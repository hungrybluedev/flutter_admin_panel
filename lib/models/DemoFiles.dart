import 'package:admin_panel/constants.dart';
import 'package:flutter/material.dart';

class CloudStorageInfo {
  final String svgSource;
  final String title;
  final String totalStorage;
  final int fileCount;
  final double percentage;
  final Color color;

  CloudStorageInfo({
    required this.svgSource,
    required this.title,
    required this.totalStorage,
    required this.fileCount,
    required this.percentage,
    required this.color,
  });
}

List<CloudStorageInfo> demoFileList = [
  CloudStorageInfo(
    title: "Documents",
    fileCount: 1328,
    svgSource: "assets/icons/Documents.svg",
    totalStorage: "1.9 GB",
    color: primaryColor,
    percentage: 35,
  ),
  CloudStorageInfo(
    title: "Google Drive",
    fileCount: 558,
    svgSource: "assets/icons/google_drive.svg",
    totalStorage: "2.9 GB",
    color: Color(0xFFFFA113),
    percentage: 35,
  ),
  CloudStorageInfo(
    title: "One Drive",
    fileCount: 112,
    svgSource: "assets/icons/one_drive.svg",
    totalStorage: "1 GB",
    color: Color(0xFFA4CDFF),
    percentage: 10,
  ),
  CloudStorageInfo(
    title: "Documents",
    fileCount: 5328,
    svgSource: "assets/icons/drop_box.svg",
    totalStorage: "7.3 GB",
    color: Color(0xFF007EE5),
    percentage: 78,
  ),
];
