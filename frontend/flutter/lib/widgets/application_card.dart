import 'package:flutter/material.dart';

import '../models/application.dart';

class ApplicationCard extends StatelessWidget {
  final Application application;

  ApplicationCard(this.application);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Card(
        elevation: 5,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                application.logo,
                height: 90,
                width: 90,
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Text(
              application.name,
              style: TextStyle(
                fontSize: 25,
                color: Colors.black,
              ),
            ),
            Spacer(),
            Icon(
              application.connected ? Icons.check : Icons.chevron_right,
              color: application.connected ? Colors.green : Colors.black,
              size: 50,
            ),
            SizedBox(
              width: 10,
            ),
          ],
        ),
      ),
    );
  }
}
