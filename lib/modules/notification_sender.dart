import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class NotificationSender extends StatelessWidget {
  const NotificationSender({Key? key}) : super(key: key);

  final String serverKey =
      // 'AIzaSyCdzZS0RnvTiHFLbXt5uYtreOtSuu68RQc';
       'ya29.a0ARW5m74JLBt4sfiG5iTfx-2VYzPMrg026Up-upove1uOpdSKp0X-DnGrASElwFTtqLXHpPxQEWzowkZXGXIoYV2c07FgwrKqw7nLxqcWU0-aOvYhBDfbvGT-LO1GhFwKTaW3eJe3Q79UGGDqLCmpByqLA_O8eC--cWNfYSHTaCgYKAT8SARASFQHGX2MiKBlon3WQVOWOalJiYZgMZw0175';
  Future<void> sendNotification(String title, String bodyy) async {
    const String fcmUrl = 'https://fcm.googleapis.com/fcm/send';
    // const String serverKey = 'YOUR_SERVER_KEY_HERE'; // Replace with your actual server key

    try {
      String? deviceToken = await FirebaseMessaging.instance.getToken();
      print("Device:$deviceToken");

      if (deviceToken == null) {
        print("Device:$deviceToken");
        debugPrint('Error: Device token is null');
        return;
      }

      final response = await http.post(
        Uri.parse(fcmUrl),
        headers: {
          'Content-Type': 'application/json',
          // 'Authorization': 'key=$serverKey',
           'Authorization': 'Bearer $serverKey',
        },
        body: jsonEncode({
          "to": deviceToken,
          "message": {

            "notification": {

              "title": title,

              "body": bodyy,

            }

          },
        }),
      );
      print("notification body:${response.body}");
      print("Device res:${response.statusCode}");

      if (response.statusCode == 200) {
        print("Device res:${response.statusCode}");

        debugPrint('Notification sent successfully: ${response.body}');
      } else {
        debugPrint('Failed to send notification: ${response.body}');
      }
    } catch (e) {
      debugPrint('Error sending notification: $e');
    }
  }

  Future<void> sendNotification1( String title, String bodyy) async {
    const String fcmUrl = 'https://fcm.googleapis.com/fcm/send';

    try {
    String? deviceToken = await FirebaseMessaging.instance.getToken();

      final response = await http.post(
        Uri.parse(fcmUrl),
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'key=$serverKey',
          // 'Authorization': 'Bearer $serverKey',
        },
        body: jsonEncode({
          'to': deviceToken,
          'notification': {
            'title': title,
            'body': bodyy,
          },
        }),
      );
        print("notification body:$bodyy");
      if (response.statusCode == 200) {
        print("notification res:$response");

        debugPrint('Notification sent successfully!');
      } else {
        print("notification res:$response");

        debugPrint('Failed to send notification: ${response.body}');
      }
    } catch (e) {
      debugPrint('Error sending notification: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    final TextEditingController tokenController = TextEditingController();
    final TextEditingController titleController = TextEditingController();
    final TextEditingController bodyController = TextEditingController();

    return Scaffold(
      appBar: AppBar(title: const Text('Send Notification')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: tokenController,
              decoration: const InputDecoration(labelText: 'Recipient Token'),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: titleController,
              decoration: const InputDecoration(labelText: 'Notification Title'),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: bodyController,
              decoration: const InputDecoration(labelText: 'Notification Body'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                final recipientToken = tokenController.text.trim();
                final title = titleController.text.trim();
                final body = bodyController.text.trim();
                if (recipientToken.isNotEmpty && title.isNotEmpty && body.isNotEmpty) {
                  sendNotification( title, body);
                }
              },
              child: const Text('Send Notification'),
            ),
          ],
        ),
      ),
    );
  }
}