import 'package:flutter/material.dart';
import 'package:project_submisson/config/colors.dart';

class MobileLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              'HUMMING\nBIRD.',
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              padding: EdgeInsets.all(0),
              decoration: BoxDecoration(
                color: buttonColor,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SizedBox(height: 40),
                  Text(
                    'SKILL UP NOW',
                    style: TextStyle(
                      fontSize: 18, // Font size for "SKILL UP NOW"
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'TAP HERE',
                    style: TextStyle(
                      fontSize: 10, // Font size for "TAP HERE"
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: Icon(Icons.play_circle_outline),
              title: Text('Episodes'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.info_outline),
              title: Text('About'),
              onTap: () {},
            ),
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "FLUTTER WEB.\nTHE BASICS",
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 40),
            Text(
              "In this course we will go over the basics of using\n"
              "Flutter Web for development. Topics will include\n"
              "Responsive Layout, Deploying, Font Changes, Hover\n"
              "functionality, Models and more.",
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(370, 50),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                ),
                child: Text('join course'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
