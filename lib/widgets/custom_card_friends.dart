import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Friend extends StatelessWidget {
  final String photo;
  final String name;
  final String description;
  final String link;

  Friend({required this.photo, required this.name,required this.description, required this.link});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        width: 150,
        height: 240,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            InkWell(
              onTap: () {
                launch(link);
              },
              child: Image.asset(
                photo,
                width: 150,
                height: 150,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Text(
                    name,
                    style: const TextStyle(
                      fontSize: 20,
                      color: Colors.blueGrey,
                    ),
                  ),
                  Text(
                    description,
                    style: const TextStyle(
                      fontSize: 16,
                      color: Color(0xff66bfbf),
                    ),
                  ),
                ],
              )
            ),
          ],
        ),
      ),
    );
  }
}
