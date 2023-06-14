// ************** Drawer Details ************** //

import 'package:flutter/material.dart';
import 'package:gmail/gmail.model.dart';

List<Map<String, dynamic>> drawerApi = [
  {
    'icon': Icons.all_inbox,
    'iconName': 'All inboxes',
  },
  {},
  {
    'icon': Icons.inbox,
    'iconName': 'Inbox',
    'emailsCount': 9,
  },
  {
    'icon': Icons.inbox,
    'iconName': 'Unread',
    'emailsCount': 9,
  },
  {
    'iconName': 'All lables',
  },
  {
    'icon': Icons.star_border,
    'iconName': 'Starred',
  },
  {
    'icon': Icons.snooze,
    'iconName': 'Snooze',
  },
  {
    'icon': Icons.label_important_outline,
    'iconName': 'Important',
    'emailsCount': 2,
  },
  {
    'icon': Icons.send,
    'iconName': 'Sent',
  },
  {
    'icon': Icons.schedule_send_outlined,
    'iconName': 'Scheduled',
  },
  {
    'icon': Icons.outbox_outlined,
    'iconName': 'Outbox',
  },
  {
    'icon': Icons.insert_drive_file_outlined,
    'iconName': 'Drafts',
  },
  {
    'icon': Icons.mail_outline,
    'iconName': 'All mail',
    'emailsCount': 311,
  },
  {
    'icon': Icons.new_releases_outlined,
    'iconName': 'Spam',
    'emailsCount': 22,
  },
  {
    'icon': Icons.delete,
    'iconName': 'Bin',
    'emailsCount': 117,
  },
  {
    'iconName': 'Google apps',
  },
  {
    'icon': Icons.calendar_today,
    'iconName': 'Calendar',
  },
  {
    'icon': Icons.account_circle_outlined,
    'iconName': 'Contacts',
  },
  {},
  {
    'icon': Icons.settings,
    'iconName': 'Settings',
  },
  {
    'icon': Icons.help_outline,
    'iconName': 'Help and feedback',
  },
];

List<DrawerDetails> drawerData = [];

// ************** All Emails Details ************** //

List<Map<String, dynamic>> allEmailsApi = [
  {
    'senderName': 'eBill',
    'emailSubject':
        'Welcome to Jio Family\nWelcome to Jio. Mr. Bhayani Viraj Girishbhai .....',
    'emailRecieveTime': '10:59 am',
    'icon': Icons.star_border,
    'circleAvtarColor': Colors.green,
  },
  {
    'senderName': 'Jio Notification',
    'emailSubject':
        'Jio Tunes activated successfully for Jio... \nDear Customer,Jio Tunes service has been .. ',
    'emailRecieveTime': '7 Jun',
    'icon': Icons.star_border,
    'circleAvtarColor': Colors.yellow[700],
  },
  {
    'senderName': 'Notification',
    'emailSubject':
        'Preferred language changed for Jio Number ... \nDear Customer, Preferred language for ...',
    'emailRecieveTime': '7 Jun',
    'icon': Icons.star_border,
    'circleAvtarColor': Colors.yellow[700],
  },
  {
    'senderName': 'Jio Survey Invitation',
    'emailSubject':
        'Jio Survey Invitation\nDigital Champions Dear Cutomer, At Jio...',
    'emailRecieveTime': '7 Jun',
    'icon': Icons.star_border,
    'circleAvtarColor': Colors.pink[200],
  },
  {
    'senderName': 'Kotak Credit Card',
    'emailSubject':
        'Pay for your recent purchase of Rs.475..\nHave you converted your recent purchase...',
    'emailRecieveTime': '10:59 am',
    'icon': Icons.star_border,
    'circleAvtarColor': Colors.red,
  },
  {
    'senderName': 'eBill',
    'emailSubject':
        'Welcome to Jio Family\nWelcome to Jio. Mr. Bhayani Viraj Girishbhai .....',
    'emailRecieveTime': '10:59 am',
    'icon': Icons.star_border,
    'circleAvtarColor': Colors.green,
  },
  {
    'senderName': 'Jio Notification',
    'emailSubject':
        'Jio Tunes activated successfully for Jio... \nDear Customer,Jio Tunes service has been .. ',
    'emailRecieveTime': '7 Jun',
    'icon': Icons.star_border,
    'circleAvtarColor': Colors.yellow[700],
  },
  {
    'senderName': 'Notification',
    'emailSubject':
        'Preferred language changed for Jio Number ... \nDear Customer, Preferred language for ...',
    'emailRecieveTime': '7 Jun',
    'icon': Icons.star_border,
    'circleAvtarColor': Colors.yellow[700],
  },
  {
    'senderName': 'Jio Survey Invitation',
    'emailSubject':
        'Jio Survey Invitation\nDigital Champions Dear Cutomer, At Jio...',
    'emailRecieveTime': '7 Jun',
    'icon': Icons.star_border,
    'circleAvtarColor': Colors.pink[200],
  },
  {
    'senderName': 'Kotak Credit Card',
    'emailSubject':
        'Pay for your recent purchase of Rs.475..\nHave you converted your recent purchase...',
    'emailRecieveTime': '10:59 am',
    'icon': Icons.star_border,
    'circleAvtarColor': Colors.red,
  },
];

List<AllEmailsDetails> allEmailsData = [];
