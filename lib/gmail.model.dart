import 'package:flutter/material.dart';

class DrawerDetails {
  String? iconName;
  IconData? icon;
  int? emailsCount;

  DrawerDetails({this.icon, this.iconName, this.emailsCount});
  factory DrawerDetails.fromJson(Map<String, dynamic> json) => DrawerDetails(
        icon: json['icon'],
        iconName: json['iconName'],
        emailsCount: json['emailsCount'],
      );
  Map<String, dynamic> toJson() {
    Map<String, dynamic> data = {};
    if (icon != null) {
      data['icon'] = icon;
    }
    if (iconName != null) {
      data['iconName'] = iconName;
    }

    if (emailsCount != null) {
      data['emailsCount'] = emailsCount;
    }
    return data;
  }
}

class AllEmailsDetails {
  String? senderName, emailSubject, emailRecieveTime;
  Color? circleAvtarColor;
  IconData? icon;
  AllEmailsDetails(
      {this.senderName,
      this.emailSubject,
      this.icon,
      this.emailRecieveTime,
      this.circleAvtarColor});
  factory AllEmailsDetails.fromJson(Map<String, dynamic> json) =>
      AllEmailsDetails(
        senderName: json['senderName'],
        emailSubject: json['emailSubject'],
        icon: json['icon'],
        emailRecieveTime: json['emailRecieveTime'],
        circleAvtarColor: json['circleAvtarColor'],
      );

  Map<String, dynamic> toJson() {
    Map<String, dynamic> data = {};
    if (senderName != null) {
      data['senderName'] = senderName;
    }
    if (emailSubject != null) {
      data['emailSubject'] = emailSubject;
    }
    if (icon != null) {
      data['icon'] = icon;
    }
    if (emailRecieveTime != null) {
      data['emailRecieveTime'] = emailRecieveTime;
    }
    if (circleAvtarColor != null) {
      data['circleAvtarColor'] = circleAvtarColor;
    }
    return data;
  }
}
